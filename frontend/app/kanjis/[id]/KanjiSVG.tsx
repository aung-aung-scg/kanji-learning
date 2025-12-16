"use client"

import { useEffect, useRef, useState } from "react"
import { TransformWrapper, TransformComponent } from "react-zoom-pan-pinch"
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
  const [strokeIndex, setStrokeIndex] = useState(0)
  const [isPaused, setIsPaused] = useState(false)

  /* ----------------------------
      Load SVG
  ----------------------------- */
  useEffect(() => {
    const hex = kanjiToHex(character)
    if (!hex) return

    fetch(`/kanjivg/${hex}.svg`)
      .then((res) => res.text())
      .then((svg) => {
        setSvgContent(svg)
        setStrokeIndex(0)
      })
  }, [character])

  /* ----------------------------
      Init strokes
  ----------------------------- */
  const resetStrokes = () => {
    if (!svgRef.current) return
    svgRef.current.querySelectorAll("path").forEach((path) => {
      const length = path.getTotalLength()
      path.style.strokeDasharray = `${length}`
      path.style.strokeDashoffset = `${length}`
      path.style.stroke = "black"
    })
  }

  /* ----------------------------
      Build Timeline
  ----------------------------- */
  const buildTimeline = () => {
    if (!svgRef.current) return

    const paths = Array.from(svgRef.current.querySelectorAll("path"))
    resetStrokes()

    const tl = gsap.timeline({ paused: true })

  const STROKE_DURATION = 1.2
  const STROKE_DELAY = 0.6

  paths.forEach((path, i) => {
    gsap.to(path, {
      strokeDashoffset: 0,
      duration: STROKE_DURATION,
      delay: i * STROKE_DELAY,
      ease: "power1.inOut",
      onStart: () => {
        path.style.stroke = "#FF0000"
      },
      onComplete: () => {
        path.style.stroke = "black"
      },
    })
  })

    timelineRef.current = tl
  }

  /* ----------------------------
      Controls
  ----------------------------- */
  const play = () => {
    if (!timelineRef.current) buildTimeline()
    timelineRef.current?.play()
    setIsPaused(false)
  }

  const pause = () => {
    timelineRef.current?.pause()
    setIsPaused(true)
  }

  const resume = () => {
    timelineRef.current?.play()
    setIsPaused(false)
  }

  const replay = () => {
    timelineRef.current?.kill()
    timelineRef.current = null
    setStrokeIndex(0)
    play()
  }

  const nextStroke = () => {
    if (!svgRef.current) return

    const paths = Array.from(svgRef.current.querySelectorAll("path"))
    const path = paths[strokeIndex]
    if (!path) return

    const length = path.getTotalLength()
    path.style.strokeDasharray = `${length}`
    path.style.strokeDashoffset = `${length}`

   gsap.to(path, {
      strokeDashoffset: 0,
      duration: 0.6,
      ease: "power1.inOut",
      onStart: () => {
        path.style.stroke = "#FF0000"
      },
      onComplete: () => {
        path.style.stroke = "black"
      },
    })

    setStrokeIndex((i) => i + 1)
  }

  if (!svgContent) return null

  /* ----------------------------
      UI
  ----------------------------- */
  return (
    <div className="mt-8 flex flex-col items-center">
      <TransformWrapper>
        <TransformComponent>
          <div
            className="h-64 w-64"
            dangerouslySetInnerHTML={{ __html: svgContent }}
            ref={(el) => {
              svgRef.current = el?.querySelector("svg") ?? null
            }}
          />
        </TransformComponent>
      </TransformWrapper>

     <div className="mt-6 flex flex-wrap items-center justify-center gap-3">
      <button onClick={play} className="control-btn bg-green-500 hover:bg-green-600">
        ▶ Play
      </button>

      <button onClick={pause} className="control-btn bg-yellow-500 hover:bg-yellow-600">
        ⏸ Pause
      </button>

      <button onClick={resume} className="control-btn bg-blue-500 hover:bg-blue-600">
        ⏯ Resume
      </button>

      <button onClick={nextStroke} className="control-btn bg-purple-500 hover:bg-purple-600">
        ⏭ Next
      </button>

      <button onClick={replay} className="control-btn bg-gray-600 hover:bg-gray-700">
        🔄 Replay
      </button>
    </div>

    </div>
  )
}
