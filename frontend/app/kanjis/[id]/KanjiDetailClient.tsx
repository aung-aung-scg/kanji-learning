"use client"

import { useState } from "react"
import KanjiSVG from "./KanjiSVG"
import ExamplesSection from "./ExamplesSection"
import CombinationsSection from "./CombinationsSection"
import KanjiStrokeModal from "./KanjiStrokeModal"

type Kanji = {
  character: string
  full_meaning_en: string
  full_meaning_mm: string
  examples: { jp: string; reading: string; en: string; mm: string }[]
  combinations: {
    word: string
    reading: string
    meaning_en: string
    meaning_mm: string
  }[]
}

type Props = {
  initialKanji: Kanji
}

export default function KanjiDetailClient({ initialKanji }: Props) {
  const [modalKanji, setModalKanji] = useState<string | null>(null)

  return (
    <>
      {/* Main kanji stroke (locked) */}
      <div className="bg-white rounded-3xl shadow-xl p-8 mb-8">
        <div className="grid md:grid-cols-2 gap-8 items-center">

          {/* Stroke Order SVG */}
          <div className="flex justify-center">
            <KanjiSVG character={initialKanji.character} />
          </div>

          {/* Full Meaning */}
          <div className="space-y-4">
            <h2 className="text-2xl font-bold text-gray-800 border-b-2 border-teal-200 pb-2">
              Detailed Meaning
            </h2>
            <p className="text-lg text-gray-700 leading-relaxed">
              <span className="font-semibold">English:</span>{" "}
              {initialKanji.full_meaning_en}
            </p>
            <p className="text-lg text-gray-700 leading-relaxed">
              <span className="font-semibold">Myanmar:</span>{" "}
              {initialKanji.full_meaning_mm}
            </p>
          </div>

        </div>
      </div>

      {/* Sections */}
      <div className="grid md:grid-cols-2 gap-8 mb-12">
        <ExamplesSection
          examples={initialKanji.examples}
          onKanjiClick={setModalKanji}
        />
        <CombinationsSection
          combinations={initialKanji.combinations}
          onKanjiClick={setModalKanji}
        />
      </div>

      {/* Modal */}
      <KanjiStrokeModal
        kanji={modalKanji}
        onClose={() => setModalKanji(null)}
      />
    </>
  )
}
