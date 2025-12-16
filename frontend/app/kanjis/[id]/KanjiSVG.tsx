"use client"
import { useEffect, useRef } from "react"
import { TransformWrapper, TransformComponent } from "react-zoom-pan-pinch"
import { gsap } from "gsap"

interface KanjiSVGProps {
  svgContent: string
}

export default function KanjiSVG({ svgContent }: KanjiSVGProps) {
  const svgRef = useRef<SVGSVGElement | null>(null)

  const animateStrokes = () => {
    if (!svgRef.current) return

    const paths = svgRef.current.querySelectorAll<SVGPathElement>("path")

    // 🔥 Kill previous animations
    gsap.killTweensOf(paths)

    paths.forEach((path, i) => {
      const length = path.getTotalLength()

      path.style.strokeDasharray = `${length}`
      path.style.strokeDashoffset = `${length}`
      path.style.stroke = "black"

      gsap.to(path, {
        strokeDashoffset: 0,
        duration: 0.8,
        delay: i * 0.25,
        ease: "power1.inOut",
        onStart: () => {
          path.style.stroke = "#ef4444" // Tailwind red-500
        },
        onComplete: () => {
          path.style.stroke = "black"
        },
      })
    })
  }

  // ▶️ Auto-play animation when SVG loads
  useEffect(() => {
    animateStrokes()
  }, [svgContent])

  return (
    <div className="mt-8 flex flex-col items-center">
      <TransformWrapper minScale={0.5} maxScale={3}>
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

      <button
        onClick={animateStrokes}
        className="mt-4 rounded bg-blue-500 px-4 py-2 text-white hover:bg-blue-600"
      >
        ▶️ Replay
      </button>
    </div>
  )
}
