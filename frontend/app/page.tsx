import Link from "next/link";

type Kanji = {
  id: number;
  character: string;
  meaning_en: string;
  jlpt_level: string;
};

async function getLatestKanjis(): Promise<Kanji[]> {
  const res = await fetch(
    `${process.env.NEXT_PUBLIC_API_BASE_URL}/api/kanjis?limit=6`,
    { cache: "no-store" }
  );

  if (!res.ok) {
    throw new Error("Failed to fetch latest kanjis");
  }

  return res.json();
}

export default async function Home() {
  const latestKanjis = await getLatestKanjis();

  return (
    <main className="min-h-screen bg-gray-50 px-4 py-8">
      <div className="max-w-6xl mx-auto space-y-12">

        {/* Header */}
        <section className="text-center">
          <h1 className="text-3xl font-bold text-gray-900 mb-2">
            Kanji Learning
          </h1>
          <p className="text-gray-600">
            Learn Japanese kanji from JLPT N5 to N1
          </p>
        </section>

        {/* JLPT Levels */}
        <section>
          <h2 className="text-xl font-semibold text-gray-900 mb-4">
            Choose JLPT Level
          </h2>

          <div className="grid grid-cols-2 sm:grid-cols-5 gap-3">
            {["5", "4", "3", "2", "1"].map((level) => (
              <Link
                key={level}
                href={`/kanjis?jlpt=${level}`}
                className="bg-white rounded-xl shadow-sm hover:shadow-md transition p-4 text-center font-semibold text-indigo-600"
              >
                JLPT N{level}
              </Link>
            ))}
          </div>
        </section>

        {/* Latest Kanji */}
        <section>
          <div className="flex justify-between items-center mb-4">
            <h2 className="text-xl font-semibold text-gray-900">
              Latest Kanji
            </h2>
            <Link
              href="/kanjis"
              className="text-sm text-indigo-600 hover:underline"
            >
              View all →
            </Link>
          </div>

          <div className="grid grid-cols-3 sm:grid-cols-6 gap-4">
            {latestKanjis.map((kanji) => (
              <Link
                key={kanji.id}
                href={`/kanjis/${kanji.id}`}
                className="bg-white rounded-xl shadow-sm hover:shadow-md transition p-4 flex flex-col items-center"
              >
                <div className="text-3xl font-bold">
                  {kanji.character}
                </div>
                <div className="text-xs text-gray-500 mt-1">
                  N{kanji.jlpt_level}
                </div>
              </Link>
            ))}
          </div>
        </section>

      </div>
    </main>
  );
}
