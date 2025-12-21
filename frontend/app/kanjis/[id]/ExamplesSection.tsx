"use client"

type Props = {
  examples: { jp: string; reading: string, en: string; mm: string }[]
  onKanjiClick: (char: string) => void
}

export default function ExamplesSection({ examples, onKanjiClick }: Props) {
  const renderClickableKanji = (text: string) =>
    text.split("").map((char, i) =>
      /\p{Script=Han}/u.test(char) ? (
        <span
          key={i}
          onClick={() => onKanjiClick(char)}
          className="font-bold cursor-pointer hover:text-indigo-600"
        >
          {char}
        </span>
      ) : (
        <span key={i}>{char}</span>
      )
    )

  return (
    <div className="bg-white rounded-3xl shadow-xl p-6">
      <h2 className="text-2xl font-bold mb-4">Example Sentences</h2>

      {examples.map((ex, idx) => (
        <div key={idx} className="p-4 bg-teal-50 rounded-xl mb-4">
          <p className="text-lg">
            {renderClickableKanji(ex.jp)}
            {ex.reading && (
              <span className="text-sm text-gray-600 ml-1">
                （{ex.reading}）
              </span>
            )}
          </p>
          <p className="text-gray-700 mt-2">
            {ex.en} / {ex.mm}
          </p>
        </div>
      ))}
    </div>
  )
}
