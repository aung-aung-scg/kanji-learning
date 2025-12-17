import Link from "next/link"

type Kanji = {
  id: number
  character: string
  meaning_mm: string
}

type ApiResponse = {
  data: Kanji[]
  page: number
  has_next: boolean
  has_prev: boolean
}

async function getKanjis(page: number): Promise<ApiResponse> {
  const res = await fetch(
    `${process.env.NEXT_PUBLIC_API_BASE_URL}/api/kanjis?page=${page}`,
    {
      cache: "no-store",
    }
  )

  if (!res.ok) {
    throw new Error("Failed to fetch kanjis")
  }

  return res.json()
}

function kanjiToHex(kanji: string) {
  const hex = kanji.codePointAt(0)?.toString(16)
  return hex ? hex.padStart(5, "0") : null
}

export default async function KanjiIndex({
  searchParams,
}: {
  searchParams: { page?: string }
}) {
  const page = Number(searchParams.page || 1)
  const { data, has_next, has_prev } = await getKanjis(page)

  return (
    <main className="min-h-screen bg-gray-50 px-4 py-8">
      <div className="mx-auto max-w-5xl">

        {/* Header */}
        <h1 className="mb-6 text-2xl font-bold">JLPT Kanji List</h1>

        {/* Kanji Grid */}
        <div className="grid grid-cols-3 gap-4 sm:grid-cols-4 md:grid-cols-6">
          {data.map((kanji) => {
            const hex = kanjiToHex(kanji.character)

            return (
              <Link
                key={kanji.id}
                href={`/kanjis/${kanji.id}`}
                className="group relative flex flex-col items-center rounded-xl bg-white p-4 shadow transition hover:-translate-y-1 hover:shadow-lg"
              >
                {/* Kanji */}
                <span className="text-3xl font-bold">
                  {kanji.character}
                </span>

                {/* Meaning */}
                <span className="mt-1 text-xs text-gray-500 text-center">
                  {kanji.meaning_mm}
                </span>

                {/* SVG Preview on hover */}
                {hex && (
                  <img
                    src={`/kanjivg/${hex}.svg`}
                    alt={kanji.character}
                    className="pointer-events-none absolute -top-32 hidden h-28 rounded bg-white p-2 shadow-lg group-hover:block"
                  />
                )}
              </Link>
            )
          })}
        </div>

        {/* Pagination */}
        <div className="mt-10 flex items-center justify-between">
          {has_prev ? (
            <Link
              href={`/kanjis?page=${page - 1}`}
              className="rounded-lg border px-4 py-2 text-sm hover:bg-gray-100"
            >
              ← Previous
            </Link>
          ) : (
            <div />
          )}

          <span className="text-sm text-gray-500">
            Page {page}
          </span>

          {has_next ? (
            <Link
              href={`/kanjis?page=${page + 1}`}
              className="rounded-lg border px-4 py-2 text-sm hover:bg-gray-100"
            >
              Next →
            </Link>
          ) : (
            <div />
          )}
        </div>

      </div>
    </main>
  )
}
