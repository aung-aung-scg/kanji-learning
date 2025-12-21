import KanjiSVG from "./KanjiSVG"
import ExamplesSection from "./ExamplesSection"
import CombinationsSection from "./CombinationsSection"
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
  examples: { jp: string; en: string; mm: string }[]
  combinations: { word: string; reading: string; meaning_en: string; meaning_mm: string }[]
}

type KanjiResponse = {
  kanji: Kanji
  prev: Kanji | null
  next: Kanji | null
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

export default async function KanjiDetailPage({ params }: { params: { id: string } }) {
  const id = Number(params.id)
  if (Number.isNaN(id)) return <div className="p-6 text-red-600">Invalid Kanji</div>

  const data = await getKanjiWithNeighbors(id)
  if (!data?.kanji) return <div className="p-6 text-gray-500">Kanji not found</div>

  const { kanji, prev, next } = data

  return (
    <main className="min-h-screen bg-gradient-to-br from-blue-50 to-green-50 py-8 px-4 sm:px-6 lg:px-8">
      <div className="max-w-5xl mx-auto">

        {/* Header Card: Main Kanji + Basics */}
        <div className="bg-white rounded-3xl shadow-xl p-8 mb-8 text-center">
          <h1 className="text-9xl sm:text-[12rem] font-bold text-teal-700 mb-6">
            {kanji.character}
          </h1>

          <div className="space-y-4">
            <p className="text-3xl font-semibold text-gray-800">
              {kanji.meaning_en} <span className="text-gray-500">/</span> {kanji.meaning_mm}
            </p>

            <div className="flex flex-wrap justify-center gap-8 text-xl text-gray-700">
              <div>
                <span className="font-bold text-teal-600">On'yomi:</span> {kanji.onyomi || "—"}
              </div>
              <div>
                <span className="font-bold text-teal-600">Kun'yomi:</span> {kanji.kunyomi || "—"}
              </div>
            </div>

            <p className="text-lg text-gray-600 mt-4">
              JLPT <span className="font-bold uppercase">{kanji.jlpt_level}</span>
            </p>
          </div>
        </div>

        {/* Stroke Order + Full Meaning Card */}
        <div className="bg-white rounded-3xl shadow-xl p-8 mb-8">
          <div className="grid md:grid-cols-2 gap-8 items-center">
            <div className="flex justify-center">
              <KanjiSVG character={kanji.character} />
            </div>

            <div className="space-y-4">
              <h2 className="text-2xl font-bold text-gray-800 border-b-2 border-teal-200 pb-2">
                Detailed Meaning
              </h2>
              <p className="text-lg text-gray-700 leading-relaxed">
                <span className="font-semibold">English:</span> {kanji.full_meaning_en}
              </p>
              <p className="text-lg text-gray-700 leading-relaxed">
                <span className="font-semibold">Myanmar:</span> {kanji.full_meaning_mm}
              </p>
            </div>
          </div>
        </div>

        <div className="grid md:grid-cols-2 gap-8 mb-12">
          <ExamplesSection examples={kanji.examples} character={kanji.character} />
          <CombinationsSection combinations={kanji.combinations} character={kanji.character} />
        </div>

        {/* Navigation Buttons */}
        <div className="flex justify-between items-center max-w-md mx-auto">
          {prev ? (
            <a
              href={`/kanjis/${prev.id}`}
              className="flex items-center gap-2 px-6 py-3 bg-teal-100 text-teal-800 rounded-xl hover:bg-teal-200 transition font-semibold"
            >
              ← {prev.character}
            </a>
          ) : <div />}
          
          <a
            href="/kanjis"
            className="px-8 py-3 bg-gray-200 text-gray-700 rounded-xl hover:bg-gray-300 transition font-semibold"
          >
            Back to List
          </a>
          
          {next ? (
            <a
              href={`/kanjis/${next.id}`}
              className="flex items-center gap-2 px-6 py-3 bg-teal-100 text-teal-800 rounded-xl hover:bg-teal-200 transition font-semibold"
            >
              {next.character} →
            </a>
          ) : <div />}
        </div>

      </div>
    </main>
  )
}
