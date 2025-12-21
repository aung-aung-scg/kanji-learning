"use client"

type Props = {
  examples: { jp: string; en: string; mm: string }[]
  onKanjiClick: (char: string) => void
}

export default function ExamplesSection({ examples, onKanjiClick }: Props) {
  const renderClickableKanji = (text: string) =>
    text.split("").map((char, i) => {
      const isKanji = /\p{Script=Han}/u.test(char)
      return isKanji ? (
        <span
          key={i}
          onClick={() => onKanjiClick(char)}
          className="cursor-pointer font-bold hover:text-indigo-600 transition"
        >
          {char}
        </span>
      ) : (
        <span key={i}>{char}</span>
      )
    })

  return (
    <div className="bg-white rounded-3xl shadow-xl p-6">
      <h2 className="text-2xl font-bold mb-4">Example Sentences</h2>
      <div className="space-y-6">
        {examples.map((ex, idx) => (
          <div key={idx} className="p-4 bg-teal-50 rounded-xl">
            <p className="text-lg leading-loose">{renderClickableKanji(ex.jp)}</p>
            <p className="mt-3 text-gray-700">
              {ex.en} / {ex.mm}
            </p>
          </div>
        ))}
      </div>
    </div>
  )
}
