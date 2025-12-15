import Link from "next/link"

type Kanji = {
  id: number
  character: string
  meaning_en: string
  meaning_mm: string
  onyomi: string
  kunyomi: string
  strokes: number
  jlpt_level: string
}

type KanjiResponse = {
  data: Kanji[]
  has_next: boolean
  has_prev: boolean
}

async function getKanjis(page: number): Promise<KanjiResponse> {
  const res = await fetch(
    `${process.env.NEXT_PUBLIC_API_BASE_URL}/api/kanjis?page=${page}`,
    { cache: "no-store" }
  )

  if (!res.ok) {
    throw new Error("Failed to fetch kanjis")
  }

  return res.json()
}

// 🔥 IMPORTANT CHANGE IS HERE
export default async function KanjiIndex({
  searchParams,
}: {
  searchParams: Promise<{ page?: string }>
}) {
  const { page } = await searchParams
  const currentPage = Number(page || 1)

  const { data, has_next, has_prev } = await getKanjis(currentPage)

  return (
    <main className="min-h-screen bg-gray-50 px-4 py-8">
      <div className="mx-auto max-w-4xl">

        <h1 className="mb-6 text-2xl font-bold">Kanji List</h1>

        {/* Kanji Grid */}
        <div className="grid grid-cols-3 gap-4 sm:grid-cols-5">
          {data.map((kanji) => (
            <Link
              key={kanji.id}
              href={`/kanjis/${kanji.id}`}
              className="flex flex-col items-center rounded-xl bg-white p-4 shadow hover:bg-indigo-50 transition"
            >
              <span className="text-3xl font-bold">{kanji.character}</span>
              <span className="mt-1 text-sm text-gray-500">
                {kanji.meaning_mm}
              </span>
            </Link>
          ))}
        </div>

        {/* Pagination */}
        <div className="mt-8 flex items-center justify-between">
          {has_prev ? (
            <Link
              href={`/kanjis?page=${currentPage - 1}`}
              className="rounded-lg border px-4 py-2 hover:bg-gray-100"
            >
              ← Previous
            </Link>
          ) : (
            <div />
          )}

          <span className="text-sm text-gray-500">
            Page {currentPage}
          </span>

          {has_next && (
            <Link
              href={`/kanjis?page=${currentPage + 1}`}
              className="rounded-lg border px-4 py-2 hover:bg-gray-100"
            >
              Next →
            </Link>
          )}
        </div>

      </div>
    </main>
  )
}
