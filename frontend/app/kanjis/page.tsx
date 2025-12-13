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

async function getKanjis(): Promise<Kanji[]> {
  const res = await fetch(
    `${process.env.NEXT_PUBLIC_API_BASE_URL}/api/kanjis`,
    { cache: "no-store" }
  )

  if (!res.ok) {
    throw new Error("Failed to fetch kanjis")
  }

  return res.json()
}

export default async function KanjiIndex() {
  const kanjis = await getKanjis()

  return (
    <main style={{ padding: 24 }}>
      <h1>Kanji List</h1>

      <ul>
        {kanjis.map((kanji) => (
          <li key={kanji.id}>
            <a href={`/kanjis/${kanji.id}`}>
              <b>{kanji.character}</b> — {kanji.meaning_en}
            </a>
          </li>
        ))}
      </ul>
    </main>
  )
}
