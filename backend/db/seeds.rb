kanjis = [
  { c: "一", en: "one", mm: "တစ်", on: "イチ", kun: "ひと", s: 1 },
  { c: "二", en: "two", mm: "နှစ်", on: "ニ", kun: "ふた", s: 2 },
  { c: "三", en: "three", mm: "သုံး", on: "サン", kun: "みっ", s: 3 },
  { c: "四", en: "four", mm: "လေး", on: "シ", kun: "よん", s: 5 },
  { c: "五", en: "five", mm: "ငါး", on: "ゴ", kun: "いつ", s: 4 },
  { c: "六", en: "six", mm: "ခြောက်", on: "ロク", kun: "むっ", s: 4 },
  { c: "七", en: "seven", mm: "ခုနှစ်", on: "シチ", kun: "なな", s: 2 },
  { c: "八", en: "eight", mm: "ရှစ်", on: "ハチ", kun: "やっ", s: 2 },
  { c: "九", en: "nine", mm: "ကိုး", on: "キュウ", kun: "ここの", s: 2 },
  { c: "十", en: "ten", mm: "ဆယ်", on: "ジュウ", kun: "とお", s: 2 },

  { c: "日", en: "sun/day", mm: "နေ့", on: "ニチ", kun: "ひ", s: 4 },
  { c: "月", en: "moon/month", mm: "လ", on: "ゲツ", kun: "つき", s: 4 },
  { c: "火", en: "fire", mm: "မီး", on: "カ", kun: "ひ", s: 4 },
  { c: "水", en: "water", mm: "ရေ", on: "スイ", kun: "みず", s: 4 },
  { c: "木", en: "tree", mm: "သစ်ပင်", on: "モク", kun: "き", s: 4 },
  { c: "金", en: "gold/money", mm: "ငွေ", on: "キン", kun: "かね", s: 8 },
  { c: "土", en: "earth", mm: "မြေ", on: "ド", kun: "つち", s: 3 },

  { c: "人", en: "person", mm: "လူ", on: "ジン", kun: "ひと", s: 2 },
  { c: "男", en: "man", mm: "ယောကျ်ား", on: "ダン", kun: "おとこ", s: 7 },
  { c: "女", en: "woman", mm: "မိန်းမ", on: "ジョ", kun: "おんな", s: 3 },
  { c: "子", en: "child", mm: "ကလေး", on: "シ", kun: "こ", s: 3 },

  { c: "学", en: "study", mm: "လေ့လာ", on: "ガク", kun: "まな", s: 8 },
  { c: "校", en: "school", mm: "ကျောင်း", on: "コウ", kun: "", s: 10 },
  { c: "先", en: "previous", mm: "ရှေ့", on: "セン", kun: "さき", s: 6 },
  { c: "生", en: "life", mm: "ဘဝ", on: "セイ", kun: "い", s: 5 },

  { c: "年", en: "year", mm: "နှစ်", on: "ネン", kun: "とし", s: 6 },
  { c: "時", en: "time", mm: "အချိန်", on: "ジ", kun: "とき", s: 10 },
  { c: "分", en: "minute", mm: "မိနစ်", on: "フン", kun: "わ", s: 4 },
  { c: "今", en: "now", mm: "ယခု", on: "コン", kun: "いま", s: 4 },

  { c: "大", en: "big", mm: "ကြီး", on: "ダイ", kun: "おお", s: 3 },
  { c: "小", en: "small", mm: "သေး", on: "ショウ", kun: "ちい", s: 3 },
  { c: "中", en: "middle", mm: "အလယ်", on: "チュウ", kun: "なか", s: 4 },

  { c: "上", en: "up", mm: "အပေါ်", on: "ジョウ", kun: "うえ", s: 3 },
  { c: "下", en: "down", mm: "အောက်", on: "カ", kun: "した", s: 3 },
  { c: "左", en: "left", mm: "ဘယ်", on: "サ", kun: "ひだり", s: 5 },
  { c: "右", en: "right", mm: "ညာ", on: "ウ", kun: "みぎ", s: 5 },

  { c: "行", en: "go", mm: "သွား", on: "コウ", kun: "い", s: 6 },
  { c: "来", en: "come", mm: "လာ", on: "ライ", kun: "く", s: 7 },
  { c: "見", en: "see", mm: "မြင်", on: "ケン", kun: "み", s: 7 },
  { c: "聞", en: "hear", mm: "ကြား", on: "ブン", kun: "き", s: 14 },
  { c: "話", en: "talk", mm: "ပြော", on: "ワ", kun: "はな", s: 13 },
  { c: "食", en: "eat", mm: "စား", on: "ショク", kun: "た", s: 9 },
  { c: "飲", en: "drink", mm: "သောက်", on: "イン", kun: "の", s: 12 },

  { c: "車", en: "car", mm: "ကား", on: "シャ", kun: "くるま", s: 7 },
  { c: "駅", en: "station", mm: "ဘူတာ", on: "エキ", kun: "", s: 14 },
  { c: "店", en: "shop", mm: "ဆိုင်", on: "テン", kun: "みせ", s: 8 },

  { c: "雨", en: "rain", mm: "မိုး", on: "ウ", kun: "あめ", s: 8 },
  { c: "天", en: "heaven", mm: "ကောင်းကင်", on: "テン", kun: "", s: 4 }
]

kanjis.each do |k|
  Kanji.find_or_create_by!(character: k[:c]) do |kanji|
    kanji.meaning_en = k[:en]
    kanji.meaning_mm = k[:mm]
    kanji.onyomi = k[:on]
    kanji.kunyomi = k[:kun]
    kanji.strokes = k[:s]
    kanji.jlpt_level = 5
  end
  puts "Seeded Kanji: #{k[:c]}"
end
