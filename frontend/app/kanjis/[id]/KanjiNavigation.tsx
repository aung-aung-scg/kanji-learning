import Link from "next/link"

type NavKanji = {
  id: number
  character: string
} | null

type Props = {
  prev: NavKanji
  next: NavKanji
}

export default function KanjiNavigation({ prev, next }: Props) {
  return (
    <div className="flex justify-between items-center mt-12">
      {/* Prev */}
      {prev ? (
        <Link
          href={`/kanjis/${prev.id}`}
          className="px-6 py-3 bg-white rounded-xl shadow hover:bg-teal-50 transition"
        >
          ← {prev.character}
        </Link>
      ) : (
        <div className="px-6 py-3 text-gray-400">← Start</div>
      )}

      {/* Next */}
      {next ? (
        <Link
          href={`/kanjis/${next.id}`}
          className="px-6 py-3 bg-white rounded-xl shadow hover:bg-teal-50 transition"
        >
          {next.character} →
        </Link>
      ) : (
        <div className="px-6 py-3 text-gray-400">End →</div>
      )}
    </div>
  )
}
