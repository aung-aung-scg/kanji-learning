"use client"

import KanjiSVG from "./KanjiSVG"

type Props = {
  kanji: string | null
  onClose: () => void
}

export default function KanjiStrokeModal({ kanji, onClose }: Props) {
  if (!kanji) return null

  return (
    <div
      className="fixed inset-0 z-50 bg-black/50 flex items-center justify-center"
      onClick={onClose}
    >
      <div
        className="bg-white rounded-2xl p-6 w-80 relative"
        onClick={e => e.stopPropagation()}
      >
        <button
          onClick={onClose}
          className="absolute top-3 right-3 text-gray-500"
        >
          ✕
        </button>

        <h2 className="text-4xl text-center mb-4">{kanji}</h2>
        <KanjiSVG character={kanji} />
      </div>
    </div>
  )
}
