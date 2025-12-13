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

async function getKanji(id: string): Promise<Kanji> {
  const res = await fetch(
    `${process.env.NEXT_PUBLIC_API_BASE_URL}/api/kanjis/${id}`,
    { cache: "no-store" }
  )

  if (!res.ok) {
    throw new Error("Failed to fetch kanji")
  }

  return res.json()
}

// 🔥 IMPORTANT CHANGE IS HERE
export default async function KanjiDetail({
  params,
}: {
  params: Promise<{ id: string }>
}) {
  const { id } = await params
  const kanji = await getKanji(id)

  return (
    <main style={{ padding: 24 }}>
      <h1>{kanji.character}</h1>
      <p><b>English:</b> {kanji.meaning_en}</p>
      <p><b>Burmese:</b> {kanji.meaning_mm}</p>
      <p><b>Onyomi:</b> {kanji.onyomi}</p>
      <p><b>Kunyomi:</b> {kanji.kunyomi}</p>
      <p><b>Strokes:</b> {kanji.strokes}</p>
      <p><b>JLPT:</b> {kanji.jlpt_level}</p>
    </main>
  )
}
