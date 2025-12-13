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

async function getKanji(): Promise<Kanji[]> {
  const res = await fetch(
    `${process.env.NEXT_PUBLIC_API_BASE_URL}/api/kanji`,
    { cache: "no-store" }
  )

  return res.json()
}

export default async function Home() {
  const kanjiList = await getKanji()

  return (
    <main style={{ padding: 24 }}>
      <h1>JLPT N5 Kanji</h1>

      <ul>
        {kanjiList.map((k) => (
          <li key={k.id}>
            <strong>{k.character}</strong> – {k.meaning_en}
          </li>
        ))}
      </ul>
    </main>
  )
}
