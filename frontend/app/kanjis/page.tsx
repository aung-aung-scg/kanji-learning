import Link from "next/link"

type Kanji = {
  id: number
  character: string
  meaning_mm: string
  jlpt_level: string
}

type ApiResponse = {
  data: Kanji[]
  page: number
  has_next: boolean
  has_prev: boolean
}

const API_BASE = process.env.NEXT_PUBLIC_API_BASE_URL!

async function getKanjis(page: number, jlpt?: string): Promise<ApiResponse> {
  const params = new URLSearchParams()
  params.append("page", page.toString())
  if (jlpt) params.append("jlpt", jlpt)

  const res = await fetch(`${API_BASE}/api/kanjis?${params.toString()}`, {
    cache: "no-store",
  })

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
  searchParams: { page?: string; jlpt?: string }
}) {
  const page = Number(searchParams.page || 1)
  const jlpt = searchParams.jlpt || undefined

  const { data, has_next, has_prev } = await getKanjis(page, jlpt)

  const currentLevel = jlpt ? `N${jlpt}` : "All Levels"

  return (
    <main className="min-h-screen bg-gray-50 px-4 py-8">
      <div className="mx-auto max-w-5xl">

        {/* Header */}
        <h1 className="mb-6 text-2xl font-bold">
          JLPT Kanji List {currentLevel !== "All Levels" && `- ${currentLevel}`}
        </h1>

        {/* JLPT Level Filter Buttons */}
        <div className="mb-8 flex flex-wrap justify-center gap-3">
          <Link
            href="/kanjis"
            className={`px-5 py-3 rounded-xl font-semibold transition ${
              !jlpt ? "bg-indigo-600 text-white" : "bg-white text-indigo-600 shadow-sm hover:shadow"
            }`}
          >
            All Levels
          </Link>
          {["5", "4", "3", "2", "1"].map((level) => (
            <Link
              key={level}
              href={`/kanjis?jlpt=${level}${page > 1 ? `&page=${page}` : ""}`}
              className={`px-5 py-3 rounded-xl font-semibold transition ${
                jlpt === level ? "bg-indigo-600 text-white" : "bg-white text-indigo-600 shadow-sm hover:shadow"
              }`}
            >
              JLPT N{level}
            </Link>
          ))}
        </div>

        {/* Kanji Grid */}
        {data.length === 0 ? (
          <p className="text-center text-gray-500 py-12">
            No kanji found for this level.
          </p>
        ) : (
          <div className="grid grid-cols-3 gap-4 sm:grid-cols-4 md:grid-cols-6">
            {data.map((kanji) => {
              const hex = kanjiToHex(kanji.character)

              return (
                <Link
                  key={kanji.id}
                  href={`/kanjis/${kanji.id}`}
                  className="group relative flex flex-col items-center rounded-xl bg-white p-4 shadow transition hover:-translate-y-1 hover:shadow-lg"
                >
                  <span className="text-3xl font-bold">{kanji.character}</span>
                  <span className="mt-1 text-xs text-gray-500 text-center">
                    {kanji.meaning_mm}
                  </span>

                  {/* Hover Stroke Order Preview */}
                  {hex && (
                    <div className="pointer-events-none absolute -top-36 left-1/2 hidden -translate-x-1/2 rounded-lg bg-white p-4 shadow-2xl group-hover:block">
                      <img
                        src={`/kanjivg/${hex}.svg`}
                        alt={`Stroke order for ${kanji.character}`}
                        className="h-32 w-32"
                      />
                      <div className="absolute bottom-0 left-1/2 h-4 w-4 -translate-x-1/2 translate-y-full rotate-45 bg-white" />
                    </div>
                  )}
                </Link>
              )
            })}
          </div>
        )}

        {/* Pagination – Fixed: No event handlers, filter preserved */}
        <div className="mt-10 flex items-center justify-between">
          {has_prev ? (
            <Link
              href={`/kanjis?page=${page - 1}${jlpt ? `&jlpt=${jlpt}` : ""}`}
              className="rounded-lg border px-4 py-2 text-sm hover:bg-gray-100 transition"
            >
              ← Previous
            </Link>
          ) : (
            <span className="rounded-lg border bg-gray-100 text-gray-400 px-4 py-2 text-sm">
              ← Previous
            </span>
          )}

          <span className="text-sm text-gray-600 font-medium">
            Page {page}
          </span>

          {has_next ? (
            <Link
              href={`/kanjis?page=${page + 1}${jlpt ? `&jlpt=${jlpt}` : ""}`}
              className="rounded-lg border px-4 py-2 text-sm hover:bg-gray-100 transition"
            >
              Next →
            </Link>
          ) : (
            <span className="rounded-lg border bg-gray-100 text-gray-400 px-4 py-2 text-sm">
              Next →
            </span>
          )}
        </div>

      </div>
    </main>
  )
}
