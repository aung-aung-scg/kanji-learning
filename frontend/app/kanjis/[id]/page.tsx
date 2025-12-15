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

async function getKanji(id: number) {
  if (id <= 0) return null

  const res = await fetch(
    `${process.env.NEXT_PUBLIC_API_BASE_URL}/api/kanjis/${id}`,
    { cache: "no-store" }
  )

  if (!res.ok) return null
  return res.json()
}

export default async function KanjiDetail({
  params,
}: {
  params: { id: string }
}) {
  const { id } = await params
  const numericId = Number(id)

  if (Number.isNaN(numericId)) {
    return <div className="p-8 text-center">Invalid Kanji ID</div>
  }

  const kanji = await getKanji(numericId)
  if (!kanji) {
    return <div className="p-8 text-center">Kanji not found</div>
  }

  // Try previous & next
  const [prevKanji, nextKanji] = await Promise.all([
    getKanji(numericId - 1),
    getKanji(numericId + 1),
  ])

  return (
    <main className="min-h-screen bg-gray-50 px-4 py-10">
      <div className="mx-auto max-w-2xl rounded-xl bg-white p-8 shadow">

        {/* Kanji Character */}
        <div className="text-center">
          <h1 className="text-7xl font-bold">{kanji.character}</h1>
          <p className="mt-2 text-sm text-gray-500">
            JLPT {kanji.jlpt_level.toUpperCase()}
          </p>
        </div>

        {/* Info */}
        <div className="mt-8 space-y-3 text-lg">
          <p><b>English:</b> {kanji.meaning_en}</p>
          <p><b>Burmese:</b> {kanji.meaning_mm}</p>
          <p><b>Onyomi:</b> {kanji.onyomi}</p>
          <p><b>Kunyomi:</b> {kanji.kunyomi}</p>
          <p><b>Strokes:</b> {kanji.strokes}</p>
        </div>

        {/* Navigation */}
        <div className="mt-10 flex items-center justify-between">
          {prevKanji ? (
            <Link
              href={`/kanjis/${prevKanji.id}`}
              className="rounded-lg border px-4 py-2 hover:bg-gray-100"
            >
              ← {prevKanji.character}
            </Link>
          ) : (
            <div />
          )}

          <Link
            href="/kanjis"
            className="text-sm text-gray-500 hover:underline"
          >
            Back to list
          </Link>

          {nextKanji ? (
            <Link
              href={`/kanjis/${nextKanji.id}`}
              className="rounded-lg border px-4 py-2 hover:bg-gray-100"
            >
              {nextKanji.character} →
            </Link>
          ) : (
            <div />
          )}
        </div>

      </div>
    </main>
  )
}
