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
    { cache: "no-store" }
  );

  if (!res.ok) {
    throw new Error("Failed to fetch kanjis");
  }

  return res.json();
}

export default async function KanjiIndex() {
  const kanjis = await getKanjis();

  return (
    <main className="min-h-screen bg-gray-50 px-4 py-8">
      <div className="max-w-6xl mx-auto">

        {/* Page Title */}
        <div className="mb-6">
          <h1 className="text-3xl font-bold text-gray-900">
            Kanji List
          </h1>
          <p className="text-gray-600 mt-1">
            JLPT kanji with meanings and readings
          </p>
        </div>

        {/* Kanji Grid */}
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-4">
          {kanjis.map((kanji) => (
            <a
              key={kanji.id}
              href={`/kanjis/${kanji.id}`}
              className="bg-white rounded-xl shadow-sm hover:shadow-md transition p-4 flex flex-col items-center text-center"
            >
              {/* Kanji Character */}
              <div className="text-4xl font-bold mb-2">
                {kanji.character}
              </div>

              {/* Meaning */}
              <div className="text-sm text-gray-700 font-medium">
                {kanji.meaning_mm}
              </div>

              {kanji.meaning_en && (
                <div className="text-xs text-gray-400 mt-1">
                  {kanji.meaning_en}
                </div>
              )}

              {/* Meta */}
              <div className="flex gap-2 mt-3 text-xs">
                <span className="px-2 py-0.5 bg-indigo-100 text-indigo-700 rounded-full">
                  N{kanji.jlpt_level}
                </span>
                <span className="px-2 py-0.5 bg-gray-100 text-gray-600 rounded-full">
                  {kanji.strokes} strokes
                </span>
              </div>
            </a>
          ))}
        </div>

      </div>
    </main>
  );
}
