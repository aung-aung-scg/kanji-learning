const API_BASE_URL = process.env.NEXT_PUBLIC_API_BASE_URL!;

export async function fetchKanjis() {
  const res = await fetch(`${API_BASE_URL}/api/kanjis`);
  if (!res.ok) throw new Error("Failed to fetch kanjis");
  return res.json();
}

export async function fetchKanji(id: number) {
  const res = await fetch(`${API_BASE_URL}/api/kanjis/${id}`);
  if (!res.ok) throw new Error("Failed to fetch kanji");
  return res.json();
}
