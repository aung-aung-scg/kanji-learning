"use client"

import { useState } from "react"
import KanjiSVG from "./KanjiSVG"

type Example = {
  jp: string
  en: string
  mm: string
}

type ExamplesSectionProps = {
  examples: Example[]
  character: string
}

export default function ExamplesSection({ examples, character }: ExamplesSectionProps) {
  const [openExamples, setOpenExamples] = useState<boolean[]>(new Array(examples.length).fill(false))

  const toggleExample = (idx: number) => {
    setOpenExamples(prev => prev.map((v, i) => i === idx ? !v : v))
  }

  if (examples.length === 0) return null

  return (
    <div className="bg-white rounded-3xl shadow-xl p-6">
      <h2 className="text-2xl font-bold text-gray-800 border-b-2 border-teal-200 pb-3 mb-4">
        Example Sentences ({examples.length})
      </h2>
      <div className="space-y-4 max-h-96 overflow-y-auto pr-2">
        {examples.map((ex, idx) => (
          <div key={idx}>
            <div
              className="p-4 bg-teal-50 rounded-xl hover:bg-teal-100 transition cursor-pointer"
              onClick={() => toggleExample(idx)}
            >
              <p className="text-lg font-medium text-gray-800">{ex.jp}</p>
              <p className="text-gray-700 mt-2">
                {ex.en} <span className="text-gray-500">/</span> {ex.mm}
              </p>
              <p className="text-sm text-teal-600 mt-2">
                {openExamples[idx] ? "Hide" : "Show"} Stroke Order
              </p>
            </div>

            {openExamples[idx] && (
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