"use client"

import { useEffect, useRef, useState } from "react"
import { gsap } from "gsap"

interface KanjiSVGProps {
  character: string
}

function kanjiToHex(kanji: string) {
  const hex = kanji.codePointAt(0)?.toString(16)
  return hex ? hex.padStart(5, "0") : null
}

export default function KanjiSVG({ character }: KanjiSVGProps) {
  const svgRef = useRef<SVGSVGElement | null>(null)
  const timelineRef = useRef<gsap.core.Timeline | null>(null)
  const [svgContent, setSvgContent] = useState<string | null>(null)

  useEffect(() => {
    const hex = kanjiToHex(character)
    if (!hex) return

    fetch(`/kanjivg/${hex}.svg`)
      .then(res => res.text())
      .then(setSvgContent)

    timelineRef.current?.kill()
    timelineRef.current = null
  }, [character])

  const resetStrokes = () => {
    if (!svgRef.current) return

    svgRef.current.querySelectorAll("path").forEach(path => {
      const length = path.getTotalLength()
      path.style.strokeDasharray = `${length}`
      path.style.strokeDashoffset = `${length}`
      path.style.stroke = "black"
    })
  }

  const buildTimeline = () => {
    if (!svgRef.current) return

    resetStrokes()
    const paths = Array.from(svgRef.current.querySelectorAll("path"))

    const tl = gsap.timeline({ paused: true })

    paths.forEach((path, i) => {
      tl.to(
        path,
        {
          strokeDashoffset: 0,
          duration: 1.2,
          ease: "power1.inOut",
          onStart: () => {(path.style.stroke = "#FF0000")},
          onComplete: () => {(path.style.stroke = "black")},
        },
        i * 0.6
      )
    })

    timelineRef.current = tl
  }

  const play = () => {
    if (!timelineRef.current) buildTimeline()
    timelineRef.current?.play()
  }

  const pause = () => {
    timelineRef.current?.pause()
  }

  const replay = () => {
    timelineRef.current?.kill()
    timelineRef.current = null
    play()
  }

  if (!svgContent) return null

  return (
    <div className="flex flex-col items-center gap-3">
      <div
        className="w-32 h-32 md:w-40 md:h-40"
        dangerouslySetInnerHTML={{ __html: svgContent }}
        ref={el => {
          svgRef.current = el?.querySelector("svg") ?? null
        }}
      />

      <div className="flex gap-2">
        <button
          onClick={play}
          className="px-3 py-1 bg-green-500 hover:bg-green-600 text-white rounded-lg"
        >
          ▶
        </button>
        <button
          onClick={pause}
          className="px-3 py-1 bg-yellow-500 hover:bg-yellow-600 text-white rounded-lg"
        >
          ⏸
        </button>
        <button
          onClick={replay}
          className="px-3 py-1 bg-gray-700 hover:bg-gray-800 text-white rounded-lg"
        >
          🔄
        </button>
      </div>
    </div>
  )
}
