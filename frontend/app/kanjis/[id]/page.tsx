import KanjiDetailClient from "./KanjiDetailClient"
import KanjiNavigation from "./KanjiNavigation"


type Kanji = {
  id: number
  character: string
  meaning_en: string
  meaning_mm: string
  full_meaning_en: string
  full_meaning_mm: string
  onyomi: string
  kunyomi: string
  strokes: number
  jlpt_level: string
  examples: { jp: string; reading: string; en: string; mm: string }[]
  combinations: { word: string; reading: string; meaning_en: string; meaning_mm: string }[]
}

type KanjiResponse = {
  kanji: Kanji
  prev: { id: number; character: string } | null
  next: { id: number; character: string } | null
}

const API_BASE = process.env.NEXT_PUBLIC_API_BASE_URL!

async function getKanjiWithNeighbors(id: number): Promise<KanjiResponse | null> {
  try {
    const res = await fetch(`${API_BASE}/api/kanjis/${id}`, { cache: "no-store" })
    if (!res.ok) return null
    return res.json()
  } catch (err) {
    console.error(err)
    return null
  }
}

export default async function KanjiDetailPage({
  params,
}: {
  params: { id: string }
}) {
  const id = Number(params.id)
  if (Number.isNaN(id)) {
    return <div className="p-6 text-red-600">Invalid Kanji</div>
  }

  const data = await getKanjiWithNeighbors(id)
  if (!data?.kanji) {
    return <div className="p-6 text-gray-500">Kanji not found</div>
  }

  const { kanji, prev, next } = data

  return (
    <main className="min-h-screen bg-gradient-to-br from-blue-50 to-green-50 py-8 px-4">
      <div className="max-w-5xl mx-auto">

        {/* Header */}
        <div className="bg-white rounded-3xl shadow-xl p-8 mb-8 text-center">
          <h1 className="text-9xl font-bold text-teal-700 mb-6">
            {kanji.character}
          </h1>

          <p className="text-3xl font-semibold">
            {kanji.meaning_en} / {kanji.meaning_mm}
          </p>

          <div className="flex justify-center gap-8 mt-4 text-lg">
            <div><b>On:</b> {kanji.onyomi || "—"}</div>
            <div><b>Kun:</b> {kanji.kunyomi || "—"}</div>
          </div>

          <p className="mt-4 text-gray-600">
            JLPT <b>{kanji.jlpt_level.toUpperCase()}</b>
          </p>
        </div>

        {/* Client Interactive Section */}
        <KanjiDetailClient initialKanji={kanji} />
        <div className="sticky bottom-4 bg-transparent">
          <KanjiNavigation prev={prev} next={next} />
        </div>

      </div>
    </main>
  )
}
