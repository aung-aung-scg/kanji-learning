"use client"

type Combination = {
  word: string
  reading: string
  meaning_en: string
  meaning_mm: string
}

type Props = {
  combinations: Combination[]
  onKanjiClick: (char: string) => void
}

export default function CombinationsSection({ combinations, onKanjiClick }: Props) {
  if (!combinations.length) return null

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
      <h2 className="text-2xl font-bold mb-4">
        Common Compounds ({combinations.length})
      </h2>

      {combinations.map((comb, idx) => (
        <div key={idx} className="p-4 bg-green-50 rounded-xl mb-4">
          <p className="text-lg">
            {renderClickableKanji(comb.word)}{" "}
            <span className="text-sm text-gray-600">({comb.reading})</span>
          </p>
          <p className="text-gray-700 mt-1">
            {comb.meaning_en} / {comb.meaning_mm}
          </p>
        </div>
      ))}
    </div>
  )
}
