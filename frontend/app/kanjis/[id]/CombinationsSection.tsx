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
  if (combinations.length === 0) return null

  return (
    <div className="bg-white rounded-3xl shadow-xl p-6">
      <h2 className="text-2xl font-bold border-b pb-3 mb-4">
        Common Compounds ({combinations.length})
      </h2>

      <div className="space-y-4 max-h-96 overflow-y-auto pr-2">
        {combinations.map((comb, idx) => (
          <div
            key={idx}
            className="p-4 bg-green-50 rounded-xl hover:bg-green-100 cursor-pointer"
            onClick={() => onKanjiClick(comb.word[0])}
          >
            <p className="text-lg font-medium">
              {comb.word}{" "}
              <span className="text-sm text-gray-600">({comb.reading})</span>
            </p>
            <p className="text-gray-700 mt-2">
              {comb.meaning_en} / {comb.meaning_mm}
            </p>
            <p className="text-sm text-green-600 mt-2">
              Click to view stroke order
            </p>
          </div>
        ))}
      </div>
    </div>
  )
}
