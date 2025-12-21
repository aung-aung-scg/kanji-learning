"use client"

import { useState } from "react"
import KanjiSVG from "./KanjiSVG"
import ExamplesSection from "./ExamplesSection"
import CombinationsSection from "./CombinationsSection"

type Kanji = {
  character: string
  examples: { jp: string; en: string; mm: string }[]
  combinations: {
    word: string
    reading: string
    meaning_en: string
    meaning_mm: string
  }[]
}

type Props = {
  initialKanji: Kanji
  prev: { id: number; character: string } | null
  next: { id: number; character: string } | null
}

export default function KanjiDetailClient({ initialKanji, prev, next }: Props) {
  const [displayedCharacter, setDisplayedCharacter] = useState(initialKanji.character)

  return (
    <>
      {/* Main SVG */}
      <div className="flex justify-center my-12">
        <KanjiSVG character={displayedCharacter} />
      </div>

      <div className="grid md:grid-cols-2 gap-8 mb-12">
        <ExamplesSection
          examples={initialKanji.examples}
          onKanjiClick={setDisplayedCharacter}
        />

        <CombinationsSection
          combinations={initialKanji.combinations}
          onKanjiClick={setDisplayedCharacter}
        />
      </div>
    </>
  )
}
