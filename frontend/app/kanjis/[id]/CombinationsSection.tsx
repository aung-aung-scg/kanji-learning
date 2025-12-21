"use client"

import { useState } from "react"
import KanjiSVG from "./KanjiSVG"

type Combination = {
  word: string
  reading: string
  meaning_en: string
  meaning_mm: string
}

type CombinationsSectionProps = {
  combinations: Combination[]
  character: string
}

export default function CombinationsSection({ combinations, character }: CombinationsSectionProps) {
  const [openCombinations, setOpenCombinations] = useState<boolean[]>(new Array(combinations.length).fill(false))

  const toggleCombination = (idx: number) => {
    setOpenCombinations(prev => prev.map((v, i) => i === idx ? !v : v))
  }

  if (combinations.length === 0) return null

  return (
    <div className="bg-white rounded-3xl shadow-xl p-6">
      <h2 className="text-2xl font-bold text-gray-800 border-b-2 border-teal-200 pb-3 mb-4">
        Common Compounds ({combinations.length})
      </h2>
      <div className="space-y-4 max-h-96 overflow-y-auto pr-2">
        {combinations.map((comb, idx) => (
          <div key={idx}>
            <div
              className="p-4 bg-green-50 rounded-xl hover:bg-green-100 transition cursor-pointer"
              onClick={() => toggleCombination(idx)}
            >
              <p className="text-lg font-medium text-gray-800">
                {comb.word} <span className="text-sm text-gray-600">({comb.reading})</span>
              </p>
              <p className="text-gray-700 mt-2">
                {comb.meaning_en} <span className="text-gray-500">/</span> {comb.meaning_mm}
              </p>
              <p className="text-sm text-green-600 mt-2">
                {openCombinations[idx] ? "Hide" : "Show"} Stroke Order
              </p>
            </div>

            {openCombinations[idx] && (
              <div className="mt-4 flex justify-center animate-fadeIn">
                <KanjiSVG character={character} />
              </div>
            )}
          </div>
        ))}
      </div>
    </div>
  )
}