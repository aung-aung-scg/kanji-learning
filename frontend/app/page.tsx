// app/page.tsx
type Kanji = {
  id: number;
  character: string;
  meaning_en: string;
  meaning_mm: string;
  onyomi: string;
  kunyomi: string;
  strokes: number;
  jlpt_level: string;
};

async function getKanjis(): Promise<Kanji[]> {
  const res = await fetch(
    `${process.env.NEXT_PUBLIC_API_BASE_URL}/api/kanjis`,
    { cache: "no-store" } // always fetch fresh data
  );

  if (!res.ok) {
    throw new Error("Failed to fetch kanjis");
  }

  return res.json();
}

export default async function Home() {
  const kanjis = await getKanjis();

  return (
    <main className="min-h-screen p-8 bg-zinc-50 dark:bg-black">
      <h1 className="text-4xl font-bold text-center text-black dark:text-white mb-8">
        Welcome to Kanji Learning
      </h1>

      <p className="text-center mb-6 text-lg text-zinc-700 dark:text-zinc-300">
        Explore some JLPT N5 Kanji below:
      </p>

      <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
        {kanjis.map((kanji) => (
          <a
            key={kanji.id}
            href={`/kanjis/${kanji.id}`}
            className="block p-4 rounded-lg shadow-md bg-white dark:bg-zinc-900 hover:shadow-lg transition-shadow"
          >
            <p className="text-3xl font-bold text-center mb-2">{kanji.character}</p>
            <p className="text-center text-lg mb-1">{kanji.meaning_en}</p>
            <p className="text-center text-sm text-zinc-500 dark:text-zinc-400">
              JLPT: {kanji.jlpt_level} | Strokes: {kanji.strokes}
            </p>
          </a>
        ))}
      </div>
    </main>
  );
}
