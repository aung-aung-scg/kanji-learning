import Link from "next/link"
import KanjiSVG from "./KanjiSVG"

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
  kanji: Kanji
  prev: Kanji | null
  next: Kanji | null
}

const API_BASE = process.env.NEXT_PUBLIC_API_BASE_URL!

async function getKanjiWithNeighbors(id: number): Promise<KanjiResponse | null> {
  const res = await fetch(`${API_BASE}/api/kanjis/${id}`, {
    next: { revalidate: 3600 }, // ✅ cache 1 hour
  })

  if (!res.ok) return null
  return res.json()
}


function kanjiToHex(kanji: string) {
  const hex = kanji.codePointAt(0)?.toString(16)
  return hex ? hex.padStart(5, "0") : null
}

async function getSVG(hex: string) {
  const baseUrl =
    process.env.NEXT_PUBLIC_SITE_URL || "http://localhost:3000"

  const res = await fetch(`${baseUrl}/kanjivg/${hex}.svg`, {
    cache: "force-cache",
  })

  if (!res.ok) return null
  return res.text()
}

export default async function KanjiDetailPage({
  params,
}: {
  params: { id: string }
}) {
  const id = Number(params.id)
  if (Number.isNaN(id)) {
    return <div className="p-8">Invalid Kanji</div>
  }

  const data = await getKanjiWithNeighbors(id)
  if (!data) {
    return <div className="p-8">Kanji not found</div>
  }

  const { kanji, prev, next } = data

  const hex = kanjiToHex(kanji.character)
  const svgContent = hex ? await getSVG(hex) : null

  return (
    <main className="min-h-screen bg-gray-50 px-4 py-10">
      <div className="mx-auto max-w-3xl rounded-xl bg-white p-8 shadow">
        <div className="text-center">
          <h1 className="text-7xl font-bold">{kanji.character}</h1>
          <p className="mt-2 text-sm text-gray-500">
            JLPT {kanji.jlpt_level.toUpperCase()} · {kanji.strokes} strokes
          </p>
        </div>

        {svgContent && <KanjiSVG svgContent={svgContent} />}

        <div className="mt-8 grid gap-4 text-lg sm:grid-cols-2">
          <p><b>English:</b> {kanji.meaning_en}</p>
          <p><b>Burmese:</b> {kanji.meaning_mm}</p>
          <p><b>Onyomi:</b> {kanji.onyomi}</p>
          <p><b>Kunyomi:</b> {kanji.kunyomi}</p>
        </div>

        {/* -----------------------------
            Navigation (PREFETCHED)
        -------------------------------- */}
        <div className="mt-10 flex items-center justify-between">
          {prev ? (
            <Link href={`/kanjis/${prev.id}`} prefetch>
              ← {prev.character}
            </Link>
          ) : (
            <div />
          )}

          <Link href="/kanjis">Back to list</Link>

          {next ? (
            <Link href={`/kanjis/${next.id}`} prefetch>
              {next.character} →
            </Link>
          ) : (
            <div />
          )}
        </div>
      </div>
    </main>
  )
}
