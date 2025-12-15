import Link from "next/link";

export default function Home() {
  return (
    <main style={{ padding: 24 }}>
      <h1>Kanji Learning App</h1>

      <p>Learn Japanese kanji step by step.</p>

      <Link href="/kanjis">
        👉 Go to Kanji List
      </Link>
    </main>
  );
}
