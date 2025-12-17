# db/seeds/kanji_seeds.rb

n5_kanji_complete = [
  # Numbers (1-10)
  {
    c: "一",
    en: "one",
    mm: "တစ်",
    on: "イチ",
    kun: "ひと",
    s: 1,
    jlpt: 5,
    combinations: [
      { word: "一人", reading: "ひとり", meaning_en: "one person", meaning_mm: "တစ်ယောက်" },
      { word: "一番", reading: "いちばん", meaning_en: "number one", meaning_mm: "အမှတ် ၁" }
    ],
    full_meaning_en: "The number one. Used for counting and as the first in order.",
    full_meaning_mm: "နံပါတ်တစ်။ အရေအတွက်အတွက်သုံးပြီး အစဉ်လိုက်ပထမဆုံးကိုလည်းရည်ညွှန်းတယ်။",
    examples: [
      { jp: "私は一人です。", en: "I am alone.", mm: "ကျွန်တော်တစ်ယောက်တည်းရှိတယ်။" },
      { jp: "一番好きです。", en: "It's my favorite.", mm: "အကြိုက်ဆုံးဖြစ်တယ်။" }
    ]
  },
  {
    c: "二",
    en: "two",
    mm: "နှစ်",
    on: "ニ",
    kun: "ふた",
    s: 2,
    jlpt: 5,
    combinations: [
      { word: "二人", reading: "ふたり", meaning_en: "two people", meaning_mm: "နှစ်ယောက်" },
      { word: "二月", reading: "にがつ", meaning_en: "February", meaning_mm: "ဖေဖော်ဝါရီလ" }
    ],
    full_meaning_en: "The number two. Used for counting pairs or as the second in order.",
    full_meaning_mm: "နံပါတ်နှစ်။ စုံတွဲတွေအတွက်သုံးပြီး အစဉ်လိုက်ဒုတိယကိုလည်းရည်ညွှန်းတယ်။",
    examples: [
      { jp: "二人で行きます。", en: "We'll go together.", mm: "နှစ်ယောက်တည်းသွားမယ်။" },
      { jp: "二か月日本にいます。", en: "I'll be in Japan for two months.", mm: "နှစ်လဂျပန်မှာနေမယ်။" }
    ]
  },
  {
    c: "三",
    en: "three",
    mm: "သုံး",
    on: "サン",
    kun: "みっ",
    s: 3,
    jlpt: 5,
    combinations: [
      { word: "三人", reading: "さんにん", meaning_en: "three people", meaning_mm: "သုံးယောက်" },
      { word: "三日", reading: "みっか", meaning_en: "3rd day of month", meaning_mm: "လသုံးရက်" }
    ],
    full_meaning_en: "The number three.",
    full_meaning_mm: "နံပါတ်သုံး။",
    examples: [
      { jp: "三人家族です。", en: "We are a family of three.", mm: "သုံးယောက်မိသားစုဖြစ်တယ်။" },
      { jp: "三月三日", en: "March 3rd", mm: "မတ်လသုံးရက်" }
    ]
  },
  {
    c: "四",
    en: "four",
    mm: "လေး",
    on: "シ",
    kun: "よん/よ",
    s: 5,
    jlpt: 5,
    combinations: [
      { word: "四人", reading: "よにん", meaning_en: "four people", meaning_mm: "လေးယောက်" },
      { word: "四月", reading: "しがつ", meaning_en: "April", meaning_mm: "ဧပြီလ" }
    ],
    full_meaning_en: "The number four.",
    full_meaning_mm: "နံပါတ်လေး။",
    examples: [
      { jp: "四時に会いましょう。", en: "Let's meet at four o'clock.", mm: "လေးနာရီမှာတွေ့ကြရအောင်။" },
      { jp: "四か国語", en: "four languages", mm: "ဘာသာစကားလေးမျိုး" }
    ]
  },
  {
    c: "五",
    en: "five",
    mm: "ငါး",
    on: "ゴ",
    kun: "いつ",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "五人", reading: "ごにん", meaning_en: "five people", meaning_mm: "ငါးယောက်" },
      { word: "五日", reading: "いつか", meaning_en: "5th day of month", meaning_mm: "လငါးရက်" }
    ],
    full_meaning_en: "The number five.",
    full_meaning_mm: "နံပါတ်ငါး။",
    examples: [
      { jp: "五時です。", en: "It's five o'clock.", mm: "ငါးနာရီဖြစ်တယ်။" },
      { jp: "五千円", en: "five thousand yen", mm: "ယန်းငါးထောင်" }
    ]
  },
  {
    c: "六",
    en: "six",
    mm: "ခြောက်",
    on: "ロク",
    kun: "むっ",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "六人", reading: "ろくにん", meaning_en: "six people", meaning_mm: "ခြောက်ယောက်" },
      { word: "六月", reading: "ろくがつ", meaning_en: "June", meaning_mm: "ဇွန်လ" }
    ],
    full_meaning_en: "The number six.",
    full_meaning_mm: "နံပါတ်ခြောက်။",
    examples: [
      { jp: "六時半", en: "six thirty", mm: "ခြောက်နာရီခွဲ" },
      { jp: "六日間", en: "six days", mm: "ခြောက်ရက်" }
    ]
  },
  {
    c: "七",
    en: "seven",
    mm: "ခုနစ်",
    on: "シチ",
    kun: "なな",
    s: 2,
    jlpt: 5,
    combinations: [
      { word: "七人", reading: "しちにん/ななにん", meaning_en: "seven people", meaning_mm: "ခုနစ်ယောက်" },
      { word: "七日", reading: "なのか", meaning_en: "7th day of month", meaning_mm: "လခုနစ်ရက်" }
    ],
    full_meaning_en: "The number seven.",
    full_meaning_mm: "နံပါတ်ခုနစ်။",
    examples: [
      { jp: "七月七日", en: "July 7th", mm: "ဇူလိုင်လခုနစ်ရက်" },
      { jp: "七時に", en: "at seven o'clock", mm: "ခုနစ်နာရီမှာ" }
    ]
  },
  {
    c: "八",
    en: "eight",
    mm: "ရှစ်",
    on: "ハチ",
    kun: "やっ",
    s: 2,
    jlpt: 5,
    combinations: [
      { word: "八人", reading: "はちにん", meaning_en: "eight people", meaning_mm: "ရှစ်ယောက်" },
      { word: "八月", reading: "はちがつ", meaning_en: "August", meaning_mm: "ဩဂုတ်လ" }
    ],
    full_meaning_en: "The number eight.",
    full_meaning_mm: "နံပါတ်ရှစ်။",
    examples: [
      { jp: "八時です。", en: "It's eight o'clock.", mm: "ရှစ်နာရီဖြစ်တယ်။" },
      { jp: "八百屋", en: "vegetable store", mm: "ဟင်းသီးဟင်းရွက်ဆိုင်" }
    ]
  },
  {
    c: "九",
    en: "nine",
    mm: "ကိုး",
    on: "キュウ/ク",
    kun: "ここの",
    s: 2,
    jlpt: 5,
    combinations: [
      { word: "九人", reading: "きゅうにん", meaning_en: "nine people", meaning_mm: "ကိုးယောက်" },
      { word: "九月", reading: "くがつ", meaning_en: "September", meaning_mm: "စက်တင်ဘာလ" }
    ],
    full_meaning_en: "The number nine.",
    full_meaning_mm: "နံပါတ်ကိုး။",
    examples: [
      { jp: "九時から", en: "from nine o'clock", mm: "ကိုးနာရီကနေ" },
      { jp: "九日間", en: "nine days", mm: "ကိုးရက်" }
    ]
  },
  {
    c: "十",
    en: "ten",
    mm: "ဆယ်",
    on: "ジュウ",
    kun: "とお",
    s: 2,
    jlpt: 5,
    combinations: [
      { word: "十人", reading: "じゅうにん", meaning_en: "ten people", meaning_mm: "ဆယ်ယောက်" },
      { word: "十日", reading: "とおか", meaning_en: "10th day of month", meaning_mm: "လဆယ်ရက်" }
    ],
    full_meaning_en: "The number ten. Also used in compound numbers like 十一 (11), 二十 (20), etc.",
    full_meaning_mm: "နံပါတ်ဆယ်။ ၁၁၊ ၂၀ စတဲ့ကိန်းတွေမှာလည်းသုံးတယ်။",
    examples: [
      { jp: "十時です。", en: "It's ten o'clock.", mm: "ဆယ်နာရီဖြစ်တယ်။" },
      { jp: "二十歳", en: "20 years old", mm: "အသက်နှစ်ဆယ်" }
    ]
  },
  {
    c: "百",
    en: "hundred",
    mm: "ရာ",
    on: "ヒャク",
    kun: "",
    s: 6,
    jlpt: 5,
    combinations: [
      { word: "百円", reading: "ひゃくえん", meaning_en: "100 yen", meaning_mm: "ယန်းတစ်ရာ" },
      { word: "三百", reading: "さんびゃく", meaning_en: "three hundred", meaning_mm: "သုံးရာ" }
    ],
    full_meaning_en: "The number one hundred.",
    full_meaning_mm: "နံပါတ်တစ်ရာ။",
    examples: [
      { jp: "百人", en: "one hundred people", mm: "တစ်ရာယောက်" },
      { jp: "五百円", en: "500 yen", mm: "ယန်းငါးရာ" }
    ]
  },
  {
    c: "千",
    en: "thousand",
    mm: "ထောင်",
    on: "セン",
    kun: "ち",
    s: 3,
    jlpt: 5,
    combinations: [
      { word: "千円", reading: "せんえん", meaning_en: "1000 yen", meaning_mm: "ယန်းတစ်ထောင်" },
      { word: "三千", reading: "さんぜん", meaning_en: "three thousand", meaning_mm: "သုံးထောင်" }
    ],
    full_meaning_en: "The number one thousand.",
    full_meaning_mm: "နံပါတ်တစ်ထောင်။",
    examples: [
      { jp: "千葉", en: "Chiba (place name)", mm: "ချီဘာ(မြို့နာမည်)" },
      { jp: "二千円", en: "2000 yen", mm: "ယန်းနှစ်ထောင်" }
    ]
  },
  {
    c: "万",
    en: "ten thousand",
    mm: "သောင်း",
    on: "マン",
    kun: "",
    s: 3,
    jlpt: 5,
    combinations: [
      { word: "一万円", reading: "いちまんえん", meaning_en: "10,000 yen", meaning_mm: "ယန်းတစ်သောင်း" },
      { word: "百万", reading: "ひゃくまん", meaning_en: "one million", meaning_mm: "တစ်သန်း" }
    ],
    full_meaning_en: "The number ten thousand. Used in larger numbers.",
    full_meaning_mm: "နံပါတ်တစ်သောင်း။ ဂဏန်းကြီးတွေမှာသုံးတယ်။",
    examples: [
      { jp: "二万円", en: "20,000 yen", mm: "ယန်းနှစ်သောင်း" },
      { jp: "三百万人", en: "three million people", mm: "လူသုံးသန်း" }
    ]
  },
  {
    c: "円",
    en: "yen/circle",
    mm: "ယန်း/ဝိုင်း",
    on: "エン",
    kun: "まる",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "百円", reading: "ひゃくえん", meaning_en: "100 yen", meaning_mm: "ယန်းတစ်ရာ" },
      { word: "円い", reading: "まるい", meaning_en: "round", meaning_mm: "ဝိုင်းတယ်" }
    ],
    full_meaning_en: "Japanese currency (yen) or circle/round shape.",
    full_meaning_mm: "ဂျပန်ငွေ (ယန်း) ဒါမှမဟုတ် ဝိုင်းတဲ့ပုံ။",
    examples: [
      { jp: "これは千円です。", en: "This is 1000 yen.", mm: "ဒါယန်းတစ်ထောင်။" },
      { jp: "円いテーブル", en: "round table", mm: "ဝိုင်းတဲ့စားပွဲ" }
    ]
  },
  {
    c: "日",
    en: "day/sun",
    mm: "နေ့/နေ",
    on: "ニチ/ジツ",
    kun: "ひ/か",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "日曜日", reading: "にちようび", meaning_en: "Sunday", meaning_mm: "တနင်္ဂနွေ" },
      { word: "日記", reading: "にっき", meaning_en: "diary", meaning_mm: "နေ့စဉ်မှတ်တမ်း" }
    ],
    full_meaning_en: "Day, sun, or Sunday. Used in days of week and dates.",
    full_meaning_mm: "နေ့၊ နေ၊ တနင်္ဂနွေ။ ရက်စွဲနဲ့ သီတင်းတစ်ပတ်ရက်တွေမှာသုံးတယ်။",
    examples: [
      { jp: "今日はいい日です。", en: "Today is a good day.", mm: "ဒီနေ့ကောင်းတဲ့နေ့။" },
      { jp: "日にち", en: "date", mm: "ရက်စွဲ" }
    ]
  },
  {
    c: "月",
    en: "month/moon",
    mm: "လ/လ",
    on: "ゲツ/ガツ",
    kun: "つき",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "月曜日", reading: "げつようび", meaning_en: "Monday", meaning_mm: "တနင်္လာ" },
      { word: "一月", reading: "いちがつ", meaning_en: "January", meaning_mm: "ဇန်နဝါရီလ" }
    ],
    full_meaning_en: "Month or moon. Used in months and Monday.",
    full_meaning_mm: "လ (ရက်သတ္တပတ်) ဒါမှမဟုတ် လ (ကြယ်)။ လနဲ့ တနင်္လာမှာသုံးတယ်။",
    examples: [
      { jp: "月がきれいです。", en: "The moon is beautiful.", mm: "လလှတယ်။" },
      { jp: "来月", en: "next month", mm: "လာမယ့်လ" }
    ]
  },
  {
    c: "火",
    en: "fire",
    mm: "မီး",
    on: "カ",
    kun: "ひ",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "火曜日", reading: "かようび", meaning_en: "Tuesday", meaning_mm: "အင်္ဂါ" },
      { word: "火事", reading: "かじ", meaning_en: "fire (disaster)", meaning_mm: "မီးလောင်မှု" }
    ],
    full_meaning_en: "Fire. Used in Tuesday and fire-related words.",
    full_meaning_mm: "မီး။ အင်္ဂါနေ့နဲ့ မီးနဲ့ဆိုင်တဲ့စကားလုံးတွေမှာသုံးတယ်။",
    examples: [
      { jp: "火をつける", en: "to light a fire", mm: "မီးထွန်းတယ်" },
      { jp: "火山", en: "volcano", mm: "မီးတောင်" }
    ]
  },
  {
    c: "水",
    en: "water",
    mm: "ရေ",
    on: "スイ",
    kun: "みず",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "水曜日", reading: "すいようび", meaning_en: "Wednesday", meaning_mm: "ဗုဒ္ဓဟူး" },
      { word: "水泳", reading: "すいえい", meaning_en: "swimming", meaning_mm: "ရေကူး" }
    ],
    full_meaning_en: "Water. Used in Wednesday and water-related words.",
    full_meaning_mm: "ရေ။ ဗုဒ္ဓဟူးနေ့နဲ့ ရေနဲ့ဆိုင်တဲ့စကားလုံးတွေမှာသုံးတယ်။",
    examples: [
      { jp: "水を飲む", en: "to drink water", mm: "ရေသောက်တယ်" },
      { jp: "水道", en: "water supply", mm: "ရေပေးဝေရေး" }
    ]
  },
  {
    c: "木",
    en: "tree/wood",
    mm: "သစ်ပင်/သစ်သား",
    on: "モク/ボク",
    kun: "き",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "木曜日", reading: "もくようび", meaning_en: "Thursday", meaning_mm: "ကြာသပတေး" },
      { word: "木の葉", reading: "このは", meaning_en: "tree leaves", meaning_mm: "သစ်ရွက်" }
    ],
    full_meaning_en: "Tree or wood. Used in Thursday.",
    full_meaning_mm: "သစ်ပင် ဒါမှမဟုတ် သစ်သား။ ကြာသပတေးနေ့မှာသုံးတယ်။",
    examples: [
      { jp: "大きい木", en: "big tree", mm: "သစ်ပင််ကြီး" },
      { jp: "木材", en: "lumber", mm: "သစ်သား" }
    ]
  },
  {
    c: "金",
    en: "gold/money",
    mm: "ရွှေ/ငွေ",
    on: "キン",
    kun: "かね",
    s: 8,
    jlpt: 5,
    combinations: [
      { word: "金曜日", reading: "きんようび", meaning_en: "Friday", meaning_mm: "သောကြာ" },
      { word: "お金", reading: "おかね", meaning_en: "money", meaning_mm: "ငွေ" }
    ],
    full_meaning_en: "Gold or money. Used in Friday.",
    full_meaning_mm: "ရွှေ ဒါမှမဟုတ် ငွေ။ သောကြာနေ့မှာသုံးတယ်။",
    examples: [
      { jp: "金持ち", en: "rich person", mm: "ချမ်းသာသူ" },
      { jp: "金色", en: "gold color", mm: "ရွှေရောင်" }
    ]
  },
  {
    c: "土",
    en: "soil/earth",
    mm: "မြေ/မြေကြီး",
    on: "ド",
    kun: "つち",
    s: 3,
    jlpt: 5,
    combinations: [
      { word: "土曜日", reading: "どようび", meaning_en: "Saturday", meaning_mm: "စနေ" },
      { word: "土産", reading: "みやげ", meaning_en: "souvenir", meaning_mm: "လက်ဆောင်" }
    ],
    full_meaning_en: "Soil or earth. Used in Saturday.",
    full_meaning_mm: "မြေ ဒါမှမဟုတ် မြေကြီး။ စနေနေ့မှာသုံးတယ်။",
    examples: [
      { jp: "土を耕す", en: "to cultivate soil", mm: "မြေထွန်ယက်တယ်" },
      { jp: "土地", en: "land", mm: "မြေ" }
    ]
  },
  {
    c: "時",
    en: "time",
    mm: "အချိန်",
    on: "ジ",
    kun: "とき",
    s: 10,
    jlpt: 5,
    combinations: [
      { word: "時間", reading: "じかん", meaning_en: "time", meaning_mm: "အချိန်" },
      { word: "一時", reading: "いちじ", meaning_en: "one o'clock", meaning_mm: "တစ်နာရီ" }
    ],
    full_meaning_en: "Time or hour.",
    full_meaning_mm: "အချိန် ဒါမှမဟုတ် နာရီ။",
    examples: [
      { jp: "何時ですか。", en: "What time is it?", mm: "ဘယ်နာရီလဲ။" },
      { jp: "時計", en: "clock/watch", mm: "နာရီ" }
    ]
  },
  {
    c: "分",
    en: "minute/understand",
    mm: "မိနစ်/နားလည်",
    on: "ブン/フン",
    kun: "わ",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "五分", reading: "ごふん", meaning_en: "five minutes", meaning_mm: "ငါးမိနစ်" },
      { word: "分かる", reading: "わかる", meaning_en: "to understand", meaning_mm: "နားလည်တယ်" }
    ],
    full_meaning_en: "Minute or to understand.",
    full_meaning_mm: "မိနစ် ဒါမှမဟုတ် နားလည်တယ်။",
    examples: [
      { jp: "三時十分", en: "3:10", mm: "သုံးနာရီဆယ်မိနစ်" },
      { jp: "わかりました。", en: "I understand.", mm: "နားလည်ပါတယ်။" }
    ]
  },
  {
    c: "半",
    en: "half",
    mm: "ထက်ဝက်",
    on: "ハン",
    kun: "",
    s: 5,
    jlpt: 5,
    combinations: [
      { word: "半分", reading: "はんぶん", meaning_en: "half", meaning_mm: "တစ်ဝက်" },
      { word: "一時半", reading: "いちじはん", meaning_en: "1:30", meaning_mm: "တစ်နာရီခွဲ" }
    ],
    full_meaning_en: "Half.",
    full_meaning_mm: "ထက်ဝက်။",
    examples: [
      { jp: "半額", en: "half price", mm: "တစ်ဝက်ဈေး" },
      { jp: "六時半", en: "6:30", mm: "ခြောက်နာရီခွဲ" }
    ]
  },
  {
    c: "人",
    en: "person",
    mm: "လူ",
    on: "ニン/ジン",
    kun: "ひと",
    s: 2,
    jlpt: 5,
    combinations: [
      { word: "日本人", reading: "にほんじん", meaning_en: "Japanese person", meaning_mm: "ဂျပန်လူမျိုး" },
      { word: "人間", reading: "にんげん", meaning_en: "human being", meaning_mm: "လူသား" }
    ],
    full_meaning_en: "Person or people.",
    full_meaning_mm: "လူ ဒါမှမဟုတ် လူတွေ။",
    examples: [
      { jp: "あの人は誰ですか。", en: "Who is that person?", mm: "အဲဒီလူကဘယ်သူလဲ။" },
      { jp: "人口", en: "population", mm: "လူဦးရေ" }
    ]
  },
  {
    c: "男",
    en: "man/male",
    mm: "ယောက်ျား",
    on: "ダン/ナン",
    kun: "おとこ",
    s: 7,
    jlpt: 5,
    combinations: [
      { word: "男の人", reading: "おとこのひと", meaning_en: "man", meaning_mm: "ယောက်ျား" },
      { word: "男性", reading: "だんせい", meaning_en: "male", meaning_mm: "အမျိုးသား" }
    ],
    full_meaning_en: "Man or male.",
    full_meaning_mm: "ယောက်ျား ဒါမှမဟုတ် အထီး။",
    examples: [
      { jp: "男の子", en: "boy", mm: "ယောက်ျားလေး" },
      { jp: "男女", en: "men and women", mm: "ယောက်ျားမိန်းမ" }
    ]
  },
  {
    c: "女",
    en: "woman/female",
    mm: "မိန်းမ",
    on: "ジョ/ニョ",
    kun: "おんな",
    s: 3,
    jlpt: 5,
    combinations: [
      { word: "女の人", reading: "おんなのひと", meaning_en: "woman", meaning_mm: "မိန်းမ" },
      { word: "女性", reading: "じょせい", meaning_en: "female", meaning_mm: "အမျိုးသမီး" }
    ],
    full_meaning_en: "Woman or female.",
    full_meaning_mm: "မိန်းမ ဒါမှမဟုတ် အမ။",
    examples: [
      { jp: "女の子", en: "girl", mm: "မိန်းကလေး" },
      { jp: "女神", en: "goddess", mm: "နတ်သမီး" }
    ]
  },
  {
    c: "子",
    en: "child",
    mm: "ကလေး",
    on: "シ/ス",
    kun: "こ",
    s: 3,
    jlpt: 5,
    combinations: [
      { word: "子供", reading: "こども", meaning_en: "child", meaning_mm: "ကလေး" },
      { word: "椅子", reading: "いす", meaning_en: "chair", meaning_mm: "ခုံ" }
    ],
    full_meaning_en: "Child. Also appears in compound words.",
    full_meaning_mm: "ကလေး။ စကားလုံးပေါင်းတွေမှာလည်းပါတယ်။",
    examples: [
      { jp: "息子", en: "son", mm: "သား" },
      { jp: "親子", en: "parent and child", mm: "မိဘနဲ့သားသမီး" }
    ]
  },
  {
    c: "父",
    en: "father",
    mm: "ဖခင်",
    on: "フ",
    kun: "ちち",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "父さん", reading: "とうさん", meaning_en: "dad", meaning_mm: "အဖေ" },
      { word: "父親", reading: "ちちおや", meaning_en: "father", meaning_mm: "ဖခင်" }
    ],
    full_meaning_en: "Father.",
    full_meaning_mm: "ဖခင်။",
    examples: [
      { jp: "私の父", en: "my father", mm: "ကျွန်တော့်အဖေ" },
      { jp: "父母", en: "father and mother", mm: "မိဘ" }
    ]
  },
  {
    c: "母",
    en: "mother",
    mm: "မိခင်",
    on: "ボ",
    kun: "はは",
    s: 5,
    jlpt: 5,
    combinations: [
      { word: "母さん", reading: "かあさん", meaning_en: "mom", meaning_mm: "အမေ" },
      { word: "母親", reading: "ははおや", meaning_en: "mother", meaning_mm: "မိခင်" }
    ],
    full_meaning_en: "Mother.",
    full_meaning_mm: "မိခင်။",
    examples: [
      { jp: "私の母", en: "my mother", mm: "ကျွန်တော့်အမေ" },
      { jp: "祖母", en: "grandmother", mm: "အဘွား" }
    ]
  },
  {
    c: "友",
    en: "friend",
    mm: "သူငယ်ချင်း",
    on: "ユウ",
    kun: "とも",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "友達", reading: "ともだち", meaning_en: "friend", meaning_mm: "သူငယ်ချင်း" },
      { word: "友情", reading: "ゆうじょう", meaning_en: "friendship", meaning_mm: "ခင်မင်ရင်းနှီးမှု" }
    ],
    full_meaning_en: "Friend.",
    full_meaning_mm: "သူငယ်ချင်း။",
    examples: [
      { jp: "いい友達", en: "good friend", mm: "ကောင်းတဲ့သူငယ်ချင်း" },
      { jp: "友人", en: "friend", mm: "မိတ်ဆွေ" }
    ]
  },
  {
    c: "先生",
    en: "teacher",
    mm: "ဆရာ",
    on: "センセイ",
    kun: "",
    s: 6,
    jlpt: 5,
    combinations: [
      { word: "学校の先生", reading: "がっこうのせんせい", meaning_en: "school teacher", meaning_mm: "ကျောင်းဆရာ" },
      { word: "医者", reading: "いしゃ", meaning_en: "doctor", meaning_mm: "ဆရာဝန်" }
    ],
    full_meaning_en: "Teacher, doctor, or master. Used as a respectful title.",
    full_meaning_mm: "ဆရာ၊ ဆရာဝန်၊ ဆရာမ။ ဂုဏ်ပြုခေါ်ဝေါ်ပုံ။",
    examples: [
      { jp: "山田先生", en: "Teacher Yamada", mm: "ရာမဒါဆရာ" },
      { jp: "先生に聞く", en: "to ask the teacher", mm: "ဆရာကိုမေးတယ်" }
    ]
  },
  {
    c: "学",
    en: "study/learning",
    mm: "သင်ယူ",
    on: "ガク",
    kun: "まな",
    s: 8,
    jlpt: 5,
    combinations: [
      { word: "学生", reading: "がくせい", meaning_en: "student", meaning_mm: "ကျောင်းသား" },
      { word: "学校", reading: "がっこう", meaning_en: "school", meaning_mm: "ကျောင်း" }
    ],
    full_meaning_en: "Study, learning, or school.",
    full_meaning_mm: "သင်ယူတာ၊ ပညာသင်တာ၊ ကျောင်း။",
    examples: [
      { jp: "大学", en: "university", mm: "တက္ကသိုလ်" },
      { jp: "学ぶ", en: "to learn", mm: "သင်ယူတယ်" }
    ]
  },
  {
    c: "生",
    en: "life/birth",
    mm: "ဘဝ/မွေး",
    on: "セイ/ショウ",
    kun: "い/う",
    s: 5,
    jlpt: 5,
    combinations: [
      { word: "学生", reading: "がくせい", meaning_en: "student", meaning_mm: "ကျောင်းသား" },
      { word: "生きる", reading: "いきる", meaning_en: "to live", meaning_mm: "အသက်ရှင်တယ်" }
    ],
    full_meaning_en: "Life, birth, or living.",
    full_meaning_mm: "ဘဝ၊ မွေးဖွားတာ၊ အသက်ရှင်တာ။",
    examples: [
      { jp: "誕生日", en: "birthday", mm: "မွေးနေ့" },
      { jp: "一生", en: "whole life", mm: "တစ်သက်တာ" }
    ]
  },
  {
    c: "先",
    en: "ahead/previous",
    mm: "ရှေ့/အရင်",
    on: "セン",
    kun: "さき",
    s: 6,
    jlpt: 5,
    combinations: [
      { word: "先生", reading: "せんせい", meaning_en: "teacher", meaning_mm: "ဆရာ" },
      { word: "先週", reading: "せんしゅう", meaning_en: "last week", meaning_mm: "ပြီးခဲ့တဲ့အပတ်" }
    ],
    full_meaning_en: "Ahead, previous, or future.",
    full_meaning_mm: "ရှေ့၊ အရင်၊ အနာဂတ်။",
    examples: [
      { jp: "先月", en: "last month", mm: "ပြီးခဲ့တဲ့လ" },
      { jp: "行きます先", en: "destination", mm: "သွားမယ့်နေရာ" }
    ]
  },
  {
    c: "上",
    en: "up/above",
    mm: "အပေါ်/အထက်",
    on: "ジョウ",
    kun: "うえ",
    s: 3,
    jlpt: 5,
    combinations: [
      { word: "上る", reading: "のぼる", meaning_en: "to go up", meaning_mm: "တက်တယ်" },
      { word: "上手", reading: "じょうず", meaning_en: "skillful", meaning_mm: "ကျွမ်းကျင်တယ်" }
    ],
    full_meaning_en: "Up, above, or superior.",
    full_meaning_mm: "အပေါ်၊ အထက်၊ သာလွန်တယ်။",
    examples: [
      { jp: "机の上", en: "on the desk", mm: "စားပွဲပေါ်" },
      { jp: "上がる", en: "to rise", mm: "မြင့်တက်တယ်" }
    ]
  },
  {
    c: "下",
    en: "down/below",
    mm: "အောက်/အောက်",
    on: "カ/ゲ",
    kun: "した/しも",
    s: 3,
    jlpt: 5,
    combinations: [
      { word: "下さい", reading: "ください", meaning_en: "please give", meaning_mm: "ပေးပါ" },
      { word: "地下", reading: "ちか", meaning_en: "underground", meaning_mm: "မြေအောက်" }
    ],
    full_meaning_en: "Down, below, or under.",
    full_meaning_mm: "အောက်၊ အောက်၊ အောက်မှာ။",
    examples: [
      { jp: "机の下", en: "under the desk", mm: "စားပွဲအောက်" },
      { jp: "下がる", en: "to go down", mm: "ကျတယ်" }
    ]
  },
  {
    c: "中",
    en: "middle/inside",
    mm: "အလယ်/အတွင်း",
    on: "チュウ",
    kun: "なか",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "中国", reading: "ちゅうごく", meaning_en: "China", meaning_mm: "တရုတ်" },
      { word: "一日中", reading: "いちにちじゅう", meaning_en: "all day", meaning_mm: "တစ်နေ့လုံး" }
    ],
    full_meaning_en: "Middle, inside, or during.",
    full_meaning_mm: "အလယ်၊ အတွင်း၊ ကာလအတွင်း။",
    examples: [
      { jp: "箱の中", en: "inside the box", mm: "သေတ္တာအတွင်း" },
      { jp: "午前中", en: "in the morning", mm: "မနက်ခင်းမှာ" }
    ]
  },
  {
    c: "外",
    en: "outside",
    mm: "အပြင်",
    on: "ガイ",
    kun: "そと",
    s: 5,
    jlpt: 5,
    combinations: [
      { word: "外国", reading: "がいこく", meaning_en: "foreign country", meaning_mm: "နိုင်ငံခြား" },
      { word: "外で", reading: "そとで", meaning_en: "outside", meaning_mm: "အပြင်မှာ" }
    ],
    full_meaning_en: "Outside, foreign, or other.",
    full_meaning_mm: "အပြင်၊ နိုင်ငံခြား၊ အခြား။",
    examples: [
      { jp: "家の外", en: "outside the house", mm: "အိမ်အပြင်" },
      { jp: "外国人", en: "foreigner", mm: "နိုင်ငံခြားသား" }
    ]
  },
  {
    c: "右",
    en: "right",
    mm: "ညာ",
    on: "ウ/ユウ",
    kun: "みぎ",
    s: 5,
    jlpt: 5,
    combinations: [
      { word: "右側", reading: "みぎがわ", meaning_en: "right side", meaning_mm: "ညာဘက်" },
      { word: "左右", reading: "さゆう", meaning_en: "left and right", meaning_mm: "ဘယ်ညာ" }
    ],
    full_meaning_en: "Right side.",
    full_meaning_mm: "ညာဘက်။",
    examples: [
      { jp: "右に曲がる", en: "turn right", mm: "ညာဘက်ကွေ့တယ်" },
      { jp: "右手", en: "right hand", mm: "လက်ယာ" }
    ]
  },
  {
    c: "左",
    en: "left",
    mm: "ဘယ်",
    on: "サ",
    kun: "ひだり",
    s: 5,
    jlpt: 5,
    combinations: [
      { word: "左側", reading: "ひだりがわ", meaning_en: "left side", meaning_mm: "ဘယ်ဘက်" },
      { word: "左右", reading: "さゆう", meaning_en: "left and right", meaning_mm: "ဘယ်ညာ" }
    ],
    full_meaning_en: "Left side.",
    full_meaning_mm: "ဘယ်ဘက်။",
    examples: [
      { jp: "左に曲がる", en: "turn left", mm: "ဘယ်ဘက်ကွေ့တယ်" },
      { jp: "左手", en: "left hand", mm: "လက်ဝဲ" }
    ]
  },
  {
    c: "北",
    en: "north",
    mm: "မြောက်",
    on: "ホク",
    kun: "きた",
    s: 5,
    jlpt: 5,
    combinations: [
      { word: "北口", reading: "きたぐち", meaning_en: "north exit", meaning_mm: "မြောက်ဘက်ထွက်ပေါက်" },
      { word: "北海道", reading: "ほっかいどう", meaning_en: "Hokkaido", meaning_mm: "ဟော့ကိုင်းဒိုး" }
    ],
    full_meaning_en: "North.",
    full_meaning_mm: "မြောက်ဘက်။",
    examples: [
      { jp: "北の方", en: "north direction", mm: "မြောက်ဘက်အရပ်" },
      { jp: "東北", en: "northeast", mm: "မြောက်အရှေ့" }
    ]
  },
  {
    c: "南",
    en: "south",
    mm: "တောင်",
    on: "ナン",
    kun: "みなみ",
    s: 9,
    jlpt: 5,
    combinations: [
      { word: "南口", reading: "みなみぐち", meaning_en: "south exit", meaning_mm: "တောင်ဘက်ထွက်ပေါက်" },
      { word: "東南アジア", reading: "とうなんアジア", meaning_en: "Southeast Asia", meaning_mm: "အရှေ့တောင်အာရှ" }
    ],
    full_meaning_en: "South.",
    full_meaning_mm: "တောင်ဘက်။",
    examples: [
      { jp: "南の方", en: "south direction", mm: "တောင်ဘက်အရပ်" },
      { jp: "南アメリカ", en: "South America", mm: "တောင်အမေရိက" }
    ]
  },
  {
    c: "東",
    en: "east",
    mm: "အရှေ့",
    on: "トウ",
    kun: "ひがし",
    s: 8,
    jlpt: 5,
    combinations: [
      { word: "東京", reading: "とうきょう", meaning_en: "Tokyo", meaning_mm: "တိုကျို" },
      { word: "東口", reading: "ひがしぐち", meaning_en: "east exit", meaning_mm: "အရှေ့ဘက်ထွက်ပေါက်" }
    ],
    full_meaning_en: "East.",
    full_meaning_mm: "အရှေ့ဘက်။",
    examples: [
      { jp: "東の方", en: "east direction", mm: "အရှေ့ဘက်အရပ်" },
      { jp: "東日本", en: "Eastern Japan", mm: "အရှေ့ဂျပန်" }
    ]
  },
  {
    c: "西",
    en: "west",
    mm: "အနောက်",
    on: "セイ/サイ",
    kun: "にし",
    s: 6,
    jlpt: 5,
    combinations: [
      { word: "西口", reading: "にしぐち", meaning_en: "west exit", meaning_mm: "အနောက်ဘက်ထွက်ပေါက်" },
      { word: "関西", reading: "かんさい", meaning_en: "Kansai region", meaning_mm: "ကန်ဆိုင်ဒေသ" }
    ],
    full_meaning_en: "West.",
    full_meaning_mm: "အနောက်ဘက်။",
    examples: [
      { jp: "西の方", en: "west direction", mm: "အနောက်ဘက်အရပ်" },
      { jp: "西洋", en: "the West", mm: "အနောက်တိုင်း" }
    ]
  },
  {
    c: "山",
    en: "mountain",
    mm: "တောင်",
    on: "サン",
    kun: "やま",
    s: 3,
    jlpt: 5,
    combinations: [
      { word: "山田", reading: "やまだ", meaning_en: "Yamada (surname)", meaning_mm: "ရာမဒါ(နာမည်)" },
      { word: "富士山", reading: "ふじさん", meaning_en: "Mt. Fuji", meaning_mm: "ဖူဂျီတောင်" }
    ],
    full_meaning_en: "Mountain.",
    full_meaning_mm: "တောင်။",
    examples: [
      { jp: "山に登る", en: "climb a mountain", mm: "တောင်တက်တယ်" },
      { jp: "山の上", en: "top of the mountain", mm: "တောင်ထိပ်" }
    ]
  },
  {
    c: "川",
    en: "river",
    mm: "မြစ်",
    on: "セン",
    kun: "かわ",
    s: 3,
    jlpt: 5,
    combinations: [
      { word: "川口", reading: "かわぐち", meaning_en: "river mouth", meaning_mm: "မြစ်ဝ" },
      { word: "小川", reading: "おがわ", meaning_en: "stream", meaning_mm: "ချောင်း" }
    ],
    full_meaning_en: "River.",
    full_meaning_mm: "မြစ်။",
    examples: [
      { jp: "川で泳ぐ", en: "swim in the river", mm: "မြစ်ထဲမှာကူးတယ်" },
      { jp: "川沿い", en: "along the river", mm: "မြစ်ကမ်းဘေး" }
    ]
  },
  {
    c: "田",
    en: "rice field",
    mm: "စပါးခင်း",
    on: "デン",
    kun: "た",
    s: 5,
    jlpt: 5,
    combinations: [
      { word: "山田", reading: "やまだ", meaning_en: "Yamada (surname)", meaning_mm: "ရာမဒါ" },
      { word: "田舎", reading: "いなか", meaning_en: "countryside", meaning_mm: "ကျေးလက်" }
    ],
    full_meaning_en: "Rice field or paddy.",
    full_meaning_mm: "စပါးခင်း။",
    examples: [
      { jp: "田中", en: "Tanaka (surname)", mm: "တနာကာ(နာမည်)" },
      { jp: "水田", en: "rice paddy", mm: "စပါးစိုက်ခင်း" }
    ]
  },
  {
    c: "天",
    en: "heaven/sky",
    mm: "ကောင်းကင်/ဘုံ",
    on: "テン",
    kun: "あま",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "天気", reading: "てんき", meaning_en: "weather", meaning_mm: "ရာသီဥတု" },
      { word: "天国", reading: "てんごく", meaning_en: "heaven", meaning_mm: "နတ်ပြည်" }
    ],
    full_meaning_en: "Heaven, sky, or weather.",
    full_meaning_mm: "ကောင်းကင်၊ ဘုံ၊ ရာသီဥတု။",
    examples: [
      { jp: "今日は天気がいい。", en: "The weather is nice today.", mm: "ဒီနေ့ရာသီဥတုကောင်းတယ်။" },
      { jp: "天の川", en: "Milky Way", mm: "နဂါးငွေ့တန်း" }
    ]
  },
  {
    c: "気",
    en: "spirit/mood",
    mm: "စိတ်/လေထု",
    on: "キ/ケ",
    kun: "",
    s: 6,
    jlpt: 5,
    combinations: [
      { word: "天気", reading: "てんき", meaning_en: "weather", meaning_mm: "ရာသီဥတု" },
      { word: "元気", reading: "げんき", meaning_en: "healthy/energetic", meaning_mm: "ကျန်းမာ/စွမ်းအား" }
    ],
    full_meaning_en: "Spirit, mood, energy, or atmosphere.",
    full_meaning_mm: "စိတ်၊ စိတ်အခြေအနေ၊ စွမ်းအား၊ လေထု။",
    examples: [
      { jp: "気をつける", en: "be careful", mm: "သတိထားပါ" },
      { jp: "人気", en: "popular", mm: "လူကြိုက်များ" }
    ]
  },
  {
    c: "車",
    en: "car/vehicle",
    mm: "ကား/ယာဉ်",
    on: "シャ",
    kun: "くるま",
    s: 7,
    jlpt: 5,
    combinations: [
      { word: "車で行く", reading: "くるまでいく", meaning_en: "go by car", meaning_mm: "ကားနဲ့သွားတယ်" },
      { word: "自転車", reading: "じてんしゃ", meaning_en: "bicycle", meaning_mm: "စက်ဘီး" }
    ],
    full_meaning_en: "Car, vehicle, or wheel.",
    full_meaning_mm: "ကား၊ ယာဉ်၊ ဘီး။",
    examples: [
      { jp: "車の運転", en: "car driving", mm: "ကားမောင်း" },
      { jp: "電車", en: "train", mm: "ရထား" }
    ]
  },
  {
    c: "電",
    en: "electricity",
    mm: "လျှပ်စစ်",
    on: "デン",
    kun: "",
    s: 13,
    jlpt: 5,
    combinations: [
      { word: "電話", reading: "でんわ", meaning_en: "telephone", meaning_mm: "တယ်လီဖုန်း" },
      { word: "電車", reading: "でんしゃ", meaning_en: "train", meaning_mm: "ရထား" }
    ],
    full_meaning_en: "Electricity.",
    full_meaning_mm: "လျှပ်စစ်။",
    examples: [
      { jp: "電気", en: "electric light", mm: "မီး" },
      { jp: "電池", en: "battery", mm: "ဘက်ထရီ" }
    ]
  },
  {
    c: "話",
    en: "talk/speech",
    mm: "စကားပြော",
    on: "ワ",
    kun: "はな",
    s: 13,
    jlpt: 5,
    combinations: [
      { word: "電話", reading: "でんわ", meaning_en: "telephone", meaning_mm: "တယ်လီဖုန်း" },
      { word: "話す", reading: "はなす", meaning_en: "to speak", meaning_mm: "စကားပြောတယ်" }
    ],
    full_meaning_en: "Talk, speech, or conversation.",
    full_meaning_mm: "စကားပြော၊ ဟောပြောချက်၊ စကားဝိုင်း။",
    examples: [
      { jp: "日本語で話す", en: "speak in Japanese", mm: "ဂျပန်လိုပြောတယ်" },
      { jp: "会話", en: "conversation", mm: "စကားပြောဆိုမှု" }
    ]
  },
  {
    c: "聞",
    en: "hear/listen",
    mm: "ကြား/နား",
    on: "ブン",
    kun: "き",
    s: 14,
    jlpt: 5,
    combinations: [
      { word: "聞く", reading: "きく", meaning_en: "to hear/listen", meaning_mm: "ကြားတယ်/နားထောင်တယ်" },
      { word: "新聞", reading: "しんぶん", meaning_en: "newspaper", meaning_mm: "သတင်းစာ" }
    ],
    full_meaning_en: "Hear, listen, or ask.",
    full_meaning_mm: "ကြားတယ်၊ နားထောင်တယ်၊ မေးတယ်။",
    examples: [
      { jp: "音楽を聞く", en: "listen to music", mm: "သီချင်းနားထောင်တယ်" },
      { jp: "聞こえる", en: "can hear", mm: "ကြားရတယ်" }
    ]
  },
  {
    c: "見",
    en: "see/look",
    mm: "မြင်/ကြည့်",
    on: "ケン",
    kun: "み",
    s: 7,
    jlpt: 5,
    combinations: [
      { word: "見る", reading: "みる", meaning_en: "to see/look", meaning_mm: "မြင်တယ်/ကြည့်တယ်" },
      { word: "意見", reading: "いけん", meaning_en: "opinion", meaning_mm: "ထင်မြင်ချက်" }
    ],
    full_meaning_en: "See, look, or watch.",
    full_meaning_mm: "မြင်တယ်၊ ကြည့်တယ်၊ စောင့်ကြည့်တယ်။",
    examples: [
      { jp: "テレビを見る", en: "watch TV", mm: "တီဗီကြည့်တယ်" },
      { jp: "見つける", en: "to find", mm: "ရှာဖွေတယ်" }
    ]
  },
  {
    c: "行",
    en: "go",
    mm: "သွား",
    on: "コウ/ギョウ",
    kun: "い/ゆ",
    s: 6,
    jlpt: 5,
    combinations: [
      { word: "行く", reading: "いく", meaning_en: "to go", meaning_mm: "သွားတယ်" },
      { word: "旅行", reading: "りょこう", meaning_en: "travel", meaning_mm: "ခရီးသွား" }
    ],
    full_meaning_en: "Go, conduct, or journey.",
    full_meaning_mm: "သွားတယ်၊ ဆောင်ရွက်တယ်၊ ခရီးသွား။",
    examples: [
      { jp: "学校に行く", en: "go to school", mm: "ကျောင်းသွားတယ်" },
      { jp: "行事", en: "event", mm: "အခမ်းအနား" }
    ]
  },
  {
    c: "来",
    en: "come",
    mm: "လာ",
    on: "ライ",
    kun: "く",
    s: 7,
    jlpt: 5,
    combinations: [
      { word: "来る", reading: "くる", meaning_en: "to come", meaning_mm: "လာတယ်" },
      { word: "来週", reading: "らいしゅう", meaning_en: "next week", meaning_mm: "လာမယ့်အပတ်" }
    ],
    full_meaning_en: "Come, next, or future.",
    full_meaning_mm: "လာတယ်၊ နောက်၊ အနာဂတ်။",
    examples: [
      { jp: "日本に来る", en: "come to Japan", mm: "ဂျပန်ကိုလာတယ်" },
      { jp: "来月", en: "next month", mm: "လာမယ့်လ" }
    ]
  },
  {
    c: "食",
    en: "eat/food",
    mm: "စား/အစာ",
    on: "ショク",
    kun: "た",
    s: 9,
    jlpt: 5,
    combinations: [
      { word: "食べる", reading: "たべる", meaning_en: "to eat", meaning_mm: "စားတယ်" },
      { word: "食事", reading: "しょくじ", meaning_en: "meal", meaning_mm: "အစား" }
    ],
    full_meaning_en: "Eat or food.",
    full_meaning_mm: "စားတယ် ဒါမှမဟုတ် အစာ။",
    examples: [
      { jp: "朝食", en: "breakfast", mm: "နံနက်စာ" },
      { jp: "食堂", en: "dining room", mm: "စားသောက်ဆိုင်" }
    ]
  },
  {
    c: "飲",
    en: "drink",
    mm: "သောက်",
    on: "イン",
    kun: "の",
    s: 12,
    jlpt: 5,
    combinations: [
      { word: "飲む", reading: "のむ", meaning_en: "to drink", meaning_mm: "သောက်တယ်" },
      { word: "飲み物", reading: "のみもの", meaning_en: "drink/beverage", meaning_mm: "သောက်စရာ" }
    ],
    full_meaning_en: "Drink.",
    full_meaning_mm: "သောက်တယ်။",
    examples: [
      { jp: "お茶を飲む", en: "drink tea", mm: "လက်ဖက်ရည်သောက်တယ်" },
      { jp: "飲み会", en: "drinking party", mm: "သောက်ပွဲ" }
    ]
  },
  {
    c: "読",
    en: "read",
    mm: "ဖတ်",
    on: "ドク",
    kun: "よ",
    s: 14,
    jlpt: 5,
    combinations: [
      { word: "読む", reading: "よむ", meaning_en: "to read", meaning_mm: "ဖတ်တယ်" },
      { word: "読書", reading: "どくしょ", meaning_en: "reading", meaning_mm: "စာဖတ်ခြင်း" }
    ],
    full_meaning_en: "Read.",
    full_meaning_mm: "ဖတ်တယ်။",
    examples: [
      { jp: "本を読む", en: "read a book", mm: "စာအုပ်ဖတ်တယ်" },
      { jp: "音読", en: "reading aloud", mm: "အသံထွက်ဖတ်တယ်" }
    ]
  },
  {
    c: "書",
    en: "write",
    mm: "ရေး",
    on: "ショ",
    kun: "か",
    s: 10,
    jlpt: 5,
    combinations: [
      { word: "書く", reading: "かく", meaning_en: "to write", meaning_mm: "ရေးတယ်" },
      { word: "辞書", reading: "じしょ", meaning_en: "dictionary", meaning_mm: " အဘိဓာန်" }
    ],
    full_meaning_en: "Write.",
    full_meaning_mm: "ရေးတယ်။",
    examples: [
      { jp: "名前を書く", en: "write a name", mm: "နာမည်ရေးတယ်" },
      { jp: "手紙を書く", en: "write a letter", mm: "စာရေးတယ်" }
    ]
  },
  {
    c: "言",
    en: "say/speak",
    mm: "ပြော",
    on: "ゲン/ゴン",
    kun: "い",
    s: 7,
    jlpt: 5,
    combinations: [
      { word: "言う", reading: "いう", meaning_en: "to say", meaning_mm: "ပြောတယ်" },
      { word: "言葉", reading: "ことば", meaning_en: "word/language", meaning_mm: "စကား/ဘာသာစကား" }
    ],
    full_meaning_en: "Say, speak, or word.",
    full_meaning_mm: "ပြောတယ်၊ ဟောပြောတယ်၊ စကား။",
    examples: [
      { jp: "日本語で言う", en: "say in Japanese", mm: "ဂျပန်လိုပြောတယ်" },
      { jp: "伝言", en: "message", mm: "မက်ဆေ့" }
    ]
  },
  {
    c: "休",
    en: "rest",
    mm: "နား",
    on: "キュウ",
    kun: "やす",
    s: 6,
    jlpt: 5,
    combinations: [
      { word: "休む", reading: "やすむ", meaning_en: "to rest", meaning_mm: "နားတယ်" },
      { word: "休み", reading: "やすみ", meaning_en: "holiday/rest", meaning_mm: "နားရက်/အနားယူ" }
    ],
    full_meaning_en: "Rest, holiday, or absence.",
    full_meaning_mm: "နားတယ်၊ ပိတ်ရက်၊ မရှိ။",
    examples: [
      { jp: "日曜日は休みです。", en: "Sunday is a holiday.", mm: "တနင်္ဂနွေကနားရက်။" },
      { jp: "夏休み", en: "summer vacation", mm: "နွေရာသီအားလပ်ရက်" }
    ]
  },
  {
    c: "会",
    en: "meet/association",
    mm: "တွေ့/အသင်း",
    on: "カイ/エ",
    kun: "あ",
    s: 6,
    jlpt: 5,
    combinations: [
      { word: "会う", reading: "あう", meaning_en: "to meet", meaning_mm: "တွေ့တယ်" },
      { word: "会社", reading: "かいしゃ", meaning_en: "company", meaning_mm: "ကုမ္ပဏီ" }
    ],
    full_meaning_en: "Meet, association, or society.",
    full_meaning_mm: "တွေ့တယ်၊ အသင်း၊ လူ့အဖွဲ့အစည်း။",
    examples: [
      { jp: "友達に会う", en: "meet a friend", mm: "သူငယ်ချင်းနဲ့တွေ့တယ်" },
      { jp: "会議", en: "meeting", mm: "အစည်းအဝေး" }
    ]
  },
  {
    c: "買",
    en: "buy",
    mm: "ဝယ်",
    on: "バイ",
    kun: "か",
    s: 12,
    jlpt: 5,
    combinations: [
      { word: "買う", reading: "かう", meaning_en: "to buy", meaning_mm: "ဝယ်တယ်" },
      { word: "買い物", reading: "かいもの", meaning_en: "shopping", meaning_mm: "ဈေးဝယ်" }
    ],
    full_meaning_en: "Buy or purchase.",
    full_meaning_mm: "ဝယ်တယ်။",
    examples: [
      { jp: "本を買う", en: "buy a book", mm: "စာအုပ်ဝယ်တယ်" },
      { jp: "買い物に行く", en: "go shopping", mm: "ဈေးဝယ်သွားတယ်" }
    ]
  },
  {
    c: "店",
    en: "shop/store",
    mm: "ဆိုင်",
    on: "テン",
    kun: "みせ",
    s: 8,
    jlpt: 5,
    combinations: [
      { word: "本屋", reading: "ほんや", meaning_en: "bookstore", meaning_mm: "စာအုပ်ဆိုင်" },
      { word: "店員", reading: "てんいん", meaning_en: "shop clerk", meaning_mm: "ဆိုင်ဝန်ထမ်း" }
    ],
    full_meaning_en: "Shop or store.",
    full_meaning_mm: "ဆိုင်။",
    examples: [
      { jp: "喫茶店", en: "coffee shop", mm: "ကော်ဖီဆိုင်" },
      { jp: "店長", en: "store manager", mm: "ဆိုင်မန်နေဂျာ" }
    ]
  },
  {
    c: "駅",
    en: "station",
    mm: "ဘူတာ",
    on: "エキ",
    kun: "",
    s: 14,
    jlpt: 5,
    combinations: [
      { word: "駅前", reading: "えきまえ", meaning_en: "in front of station", meaning_mm: "ဘူတာရှေ့" },
      { word: "東京駅", reading: "とうきょうえき", meaning_en: "Tokyo Station", meaning_mm: "တိုကျိုဘူတာ" }
    ],
    full_meaning_en: "Railway station.",
    full_meaning_mm: "ရထားဘူတာ။",
    examples: [
      { jp: "駅まで歩く", en: "walk to the station", mm: "ဘူတာအထိလျှောက်သွားတယ်" },
      { jp: "新宿駅", en: "Shinjuku Station", mm: "ရှင်းဂျူကူဘူတာ" }
    ]
  },
  {
    c: "何",
    en: "what",
    mm: "ဘာ",
    on: "カ",
    kun: "なに/なん",
    s: 7,
    jlpt: 5,
    combinations: [
      { word: "何ですか", reading: "なんですか", meaning_en: "What is it?", meaning_mm: "ဘာလဲ။" },
      { word: "何人", reading: "なんにん", meaning_en: "how many people", meaning_mm: "ဘယ်နှစ်ယောက်" }
    ],
    full_meaning_en: "What or which.",
    full_meaning_mm: "ဘာ ဒါမှမဟုတ် ဘယ်။",
    examples: [
      { jp: "何時ですか。", en: "What time is it?", mm: "ဘယ်နာရီလဲ။" },
      { jp: "何か", en: "something", mm: "တစ်ခုခု" }
    ]
  },
  {
    c: "午",
    en: "noon",
    mm: "နေ့လယ်",
    on: "ゴ",
    kun: "",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "午前", reading: "ごぜん", meaning_en: "morning", meaning_mm: "မနက်" },
      { word: "午後", reading: "ごご", meaning_en: "afternoon", meaning_mm: "မွန်းလွဲ" }
    ],
    full_meaning_en: "Noon or horse (in zodiac).",
    full_meaning_mm: "နေ့လယ် ဒါမှမဟုတ် မြင်း။",
    examples: [
      { jp: "正午", en: "noon", mm: "နေ့လယ် ၁၂ နာရီ" },
      { jp: "午前中", en: "in the morning", mm: "မနက်ခင်းမှာ" }
    ]
  },
  {
    c: "名",
    en: "name/famous",
    mm: "နာမည်/ကျော်ကြား",
    on: "メイ/ミョウ",
    kun: "な",
    s: 6,
    jlpt: 5,
    combinations: [
      { word: "名前", reading: "なまえ", meaning_en: "name", meaning_mm: "နာမည်" },
      { word: "有名", reading: "ゆうめい", meaning_en: "famous", meaning_mm: "ကျော်ကြား" }
    ],
    full_meaning_en: "Name or fame.",
    full_meaning_mm: "နာမည် ဒါမှမဟုတ် ကျော်ကြား။",
    examples: [
      { jp: "名前を書く", en: "write your name", mm: "နာမည်ရေးတယ်" },
      { jp: "名古屋", en: "Nagoya", mm: "နာဂိုယာ" }
    ]
  },
  {
    c: "白",
    en: "white",
    mm: "အဖြူ",
    on: "ハク/ビャク",
    kun: "しろ/しら",
    s: 5,
    jlpt: 5,
    combinations: [
      { word: "白い", reading: "しろい", meaning_en: "white", meaning_mm: "အဖြူရောင်" },
      { word: "白紙", reading: "はくし", meaning_en: "blank paper", meaning_mm: "စာရွက်ဖြူ" }
    ],
    full_meaning_en: "White.",
    full_meaning_mm: "အဖြူရောင်။",
    examples: [
      { jp: "白雪", en: "white snow", mm: "ဆီးနှင်းဖြူ" },
      { jp: "明白", en: "clear", mm: "ရှင်းလင်း" }
    ]
  },
  {
    c: "黒",
    en: "black",
    mm: "အမည်း",
    on: "コク",
    kun: "くろ",
    s: 11,
    jlpt: 5,
    combinations: [
      { word: "黒い", reading: "くろい", meaning_en: "black", meaning_mm: "အမည်းရောင်" },
      { word: "黒板", reading: "こくばん", meaning_en: "blackboard", meaning_mm: "ကျောက်သင်ပုန်း" }
    ],
    full_meaning_en: "Black.",
    full_meaning_mm: "အမည်းရောင်။",
    examples: [
      { jp: "黒人", en: "black person", mm: "လူမည်း" },
      { jp: "暗黒", en: "darkness", mm: "အမှောင်" }
    ]
  },
  {
    c: "赤",
    en: "red",
    mm: "အနီ",
    on: "セキ/シャク",
    kun: "あか",
    s: 7,
    jlpt: 5,
    combinations: [
      { word: "赤い", reading: "あかい", meaning_en: "red", meaning_mm: "အနီရောင်" },
      { word: "赤ちゃん", reading: "あかちゃん", meaning_en: "baby", meaning_mm: "ကလေး" }
    ],
    full_meaning_en: "Red.",
    full_meaning_mm: "အနီရောင်။",
    examples: [
      { jp: "赤十字", en: "Red Cross", mm: "အနီကရစ်" },
      { jp: "赤道", en: "equator", mm: "အီကွေတာ" }
    ]
  },
  {
    c: "青",
    en: "blue/green",
    mm: "အပြာ/အစိမ်း",
    on: "セイ/ショウ",
    kun: "あお",
    s: 8,
    jlpt: 5,
    combinations: [
      { word: "青い", reading: "あおい", meaning_en: "blue/green", meaning_mm: "အပြာ/အစိမ်း" },
      { word: "青年", reading: "せいねん", meaning_en: "young man", meaning_mm: "လူငယ်" }
    ],
    full_meaning_en: "Blue or green (in Japanese context).",
    full_meaning_mm: "အပြာ ဒါမှမဟုတ် အစိမ်း။",
    examples: [
      { jp: "青空", en: "blue sky", mm: "ကောင်းကင်ပြာ" },
      { jp: "青信号", en: "green light", mm: "အစိမ်းရောင်မီး" }
    ]
  },
  {
    c: "花",
    en: "flower",
    mm: "ပန်း",
    on: "カ",
    kun: "はな",
    s: 7,
    jlpt: 5,
    combinations: [
      { word: "花見", reading: "はなみ", meaning_en: "flower viewing", meaning_mm: "ပန်းကြည့်တာ" },
      { word: "花火", reading: "はなび", meaning_en: "fireworks", meaning_mm: "မီးရှူးမီးပန်း" }
    ],
    full_meaning_en: "Flower.",
    full_meaning_mm: "ပန်း။",
    examples: [
      { jp: "桜の花", en: "cherry blossom", mm: "ချယ်ရီပန်း" },
      { jp: "花瓶", en: "vase", mm: "ပန်းအိုး" }
    ]
  },
  {
    c: "草",
    en: "grass",
    mm: "မြက်",
    on: "ソウ",
    kun: "くさ",
    s: 9,
    jlpt: 5,
    combinations: [
      { word: "草花", reading: "くさばな", meaning_en: "plants and flowers", meaning_mm: "အပင်နဲ့ပန်း" },
      { word: "雑草", reading: "ざっそう", meaning_en: "weed", meaning_mm: "မြက်ပင်တွေ" }
    ],
    full_meaning_en: "Grass or herb.",
    full_meaning_mm: "မြက် ဒါမှမဟုတ် ဆေးဖက်ဝင်။",
    examples: [
      { jp: "草原", en: "grassland", mm: "မြက်ခင်းပြင်" },
      { jp: "草書", en: "cursive writing", mm: "လက်ရေးစာလုံး" }
    ]
  },
  {
    c: "林",
    en: "woods/grove",
    mm: "တော",
    on: "リン",
    kun: "はやし",
    s: 8,
    jlpt: 5,
    combinations: [
      { word: "林業", reading: "りんぎょう", meaning_en: "forestry", meaning_mm: "သစ်တောလုပ်ငန်း" },
      { word: "小林", reading: "こばやし", meaning_en: "Kobayashi (surname)", meaning_mm: "ကိုဘာရှီ(နာမည်)" }
    ],
    full_meaning_en: "Woods or grove.",
    full_meaning_mm: "တော ဒါမှမဟုတ် သစ်တော။",
    examples: [
      { jp: "森林", en: "forest", mm: "သစ်တော" },
      { jp: "竹林", en: "bamboo grove", mm: "ဝါးတော" }
    ]
  },
  {
    c: "森",
    en: "forest",
    mm: "သစ်တော",
    on: "シン",
    kun: "もり",
    s: 12,
    jlpt: 5,
    combinations: [
      { word: "森林", reading: "しんりん", meaning_en: "forest", meaning_mm: "သစ်တော" },
      { word: "森田", reading: "もりた", meaning_en: "Morita (surname)", meaning_mm: "မိုရီတာ(နာမည်)" }
    ],
    full_meaning_en: "Forest.",
    full_meaning_mm: "သစ်တော။",
    examples: [
      { jp: "森の中で", en: "in the forest", mm: "သစ်တောထဲမှာ" },
      { jp: "森の動物", en: "forest animals", mm: "သစ်တောတိရစ္ဆာန်" }
    ]
  },
  {
    c: "竹",
    en: "bamboo",
    mm: "ဝါး",
    on: "チク",
    kun: "たけ",
    s: 6,
    jlpt: 5,
    combinations: [
      { word: "竹の子", reading: "たけのこ", meaning_en: "bamboo shoot", meaning_mm: "ဝါးမြစ်" },
      { word: "竹林", reading: "たけばやし", meaning_en: "bamboo grove", meaning_mm: "ဝါးတော" }
    ],
    full_meaning_en: "Bamboo.",
    full_meaning_mm: "ဝါး။",
    examples: [
      { jp: "竹馬", en: "stilts", mm: "ဝါးခြေထောက်" },
      { jp: "竹刀", en: "bamboo sword", mm: "ဝါးဓား" }
    ]
  },
  {
    c: "茶",
    en: "tea",
    mm: "လက်ဖက်",
    on: "チャ/サ",
    kun: "",
    s: 9,
    jlpt: 5,
    combinations: [
      { word: "お茶", reading: "おちゃ", meaning_en: "tea", meaning_mm: "လက်ဖက်ရည်" },
      { word: "喫茶店", reading: "きっさてん", meaning_en: "coffee shop", meaning_mm: "ကော်ဖီဆိုင်" }
    ],
    full_meaning_en: "Tea.",
    full_meaning_mm: "လက်ဖက်။",
    examples: [
      { jp: "茶色", en: "brown", mm: "အညို" },
      { jp: "茶碗", en: "rice bowl", mm: "ထမင်းပန်းကန်" }
    ]
  },
  {
    c: "貝",
    en: "shellfish",
    mm: "ခရု",
    on: "バイ",
    kun: "かい",
    s: 7,
    jlpt: 5,
    combinations: [
      { word: "貝殻", reading: "かいがら", meaning_en: "seashell", meaning_mm: "ခရုခွံ" },
      { word: "貝類", reading: "かいるい", meaning_en: "shellfish", meaning_mm: "ခရုမျိုး" }
    ],
    full_meaning_en: "Shellfish or shell.",
    full_meaning_mm: "ခရု ဒါမှမဟုတ် ခွံ။",
    examples: [
      { jp: "巻貝", en: "snail", mm: "ခရုကောင်" },
      { jp: "貝柱", en: "scallop", mm: "ခရုအသား" }
    ]
  },
  {
    c: "雨",
    en: "rain",
    mm: "မိုး",
    on: "ウ",
    kun: "あめ/あま",
    s: 8,
    jlpt: 5,
    combinations: [
      { word: "雨が降る", reading: "あめがふる", meaning_en: "it rains", meaning_mm: "မိုးရွာတယ်" },
      { word: "大雨", reading: "おおあめ", meaning_en: "heavy rain", meaning_mm: "မိုးကြီး" }
    ],
    full_meaning_en: "Rain.",
    full_meaning_mm: "မိုး။",
    examples: [
      { jp: "雨天", en: "rainy weather", mm: "မိုးရွာတဲ့ရာသီဥတု" },
      { jp: "雨傘", en: "umbrella", mm: "ထီး" }
    ]
  },
  {
    c: "石",
    en: "stone",
    mm: "ကျောက်",
    on: "セキ/シャク/コク",
    kun: "いし",
    s: 5,
    jlpt: 5,
    combinations: [
      { word: "石鹸", reading: "せっけん", meaning_en: "soap", meaning_mm: "ဆပ်ပြာ" },
      { word: "石油", reading: "せきゆ", meaning_en: "oil/petroleum", meaning_mm: "ရေနံ" }
    ],
    full_meaning_en: "Stone or rock.",
    full_meaning_mm: "ကျောက်။",
    examples: [
      { jp: "宝石", en: "jewel", mm: "ရတနာ" },
      { jp: "石川", en: "Ishikawa (place name)", mm: "ရှီကာဝါ(နာမည်)" }
    ]
  },
  {
    c: "空",
    en: "sky/empty",
    mm: "ကောင်းကင်/ဗလာ",
    on: "クウ",
    kun: "そら/あ/から",
    s: 8,
    jlpt: 5,
    combinations: [
      { word: "空港", reading: "くうこう", meaning_en: "airport", meaning_mm: "လေဆိပ်" },
      { word: "空気", reading: "くうき", meaning_en: "air", meaning_mm: "လေ" }
    ],
    full_meaning_en: "Sky or empty.",
    full_meaning_mm: "ကောင်းကင် ဒါမှမဟုတ် ဗလာ။",
    examples: [
      { jp: "空手", en: "karate", mm: "ကရာတေး" },
      { jp: "空箱", en: "empty box", mm: "ဗလာသေတ္တာ" }
    ]
  },
  {
    c: "魚",
    en: "fish",
    mm: "ငါး",
    on: "ギョ",
    kun: "さかな/うお",
    s: 11,
    jlpt: 5,
    combinations: [
      { word: "魚屋", reading: "さかなや", meaning_en: "fish shop", meaning_mm: "ငါးဆိုင်" },
      { word: "金魚", reading: "きんぎょ", meaning_en: "goldfish", meaning_mm: "ငါးရွှေ" }
    ],
    full_meaning_en: "Fish.",
    full_meaning_mm: "ငါး။",
    examples: [
      { jp: "焼き魚", en: "grilled fish", mm: "ငါးကင်" },
      { jp: "魚釣り", en: "fishing", mm: "ငါးဖမ်း" }
    ]
  },
  {
    c: "耳",
    en: "ear",
    mm: "နား",
    on: "ジ",
    kun: "みみ",
    s: 6,
    jlpt: 5,
    combinations: [
      { word: "耳が痛い", reading: "みみがいたい", meaning_en: "ear hurts", meaning_mm: "နားကိုက်တယ်" },
      { word: "耳鼻科", reading: "じびか", meaning_en: "ear, nose and throat clinic", meaning_mm: "နားနှာခေါင်းလည်ချောင်း" }
    ],
    full_meaning_en: "Ear.",
    full_meaning_mm: "နား။",
    examples: [
      { jp: "耳元", en: "near the ear", mm: "နားအနီး" },
      { jp: "耳掻き", en: "ear pick", mm: "နားထွေး" }
    ]
  },
  {
    c: "手",
    en: "hand",
    mm: "လက်",
    on: "シュ",
    kun: "て",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "手紙", reading: "てがみ", meaning_en: "letter", meaning_mm: "စာ" },
      { word: "下手", reading: "へた", meaning_en: "unskillful", meaning_mm: "မကျွမ်းကျင်" }
    ],
    full_meaning_en: "Hand.",
    full_meaning_mm: "လက်။",
    examples: [
      { jp: "手伝う", en: "to help", mm: "ကူညီတယ်" },
      { jp: "握手", en: "handshake", mm: "လက်ဆွဲနှုတ်ဆက်" }
    ]
  },
  {
    c: "足",
    en: "foot/leg",
    mm: "ခြေထောက်",
    on: "ソク",
    kun: "あし/た",
    s: 7,
    jlpt: 5,
    combinations: [
      { word: "足りる", reading: "たりる", meaning_en: "to be enough", meaning_mm: "လုံလောက်တယ်" },
      { word: "足音", reading: "あしおと", meaning_en: "footsteps", meaning_mm: "ခြေသံ" }
    ],
    full_meaning_en: "Foot or leg.",
    full_meaning_mm: "ခြေထောက်။",
    examples: [
      { jp: "足首", en: "ankle", mm: "ခြေချင်းဝတ်" },
      { jp: "不足", en: "shortage", mm: "ချို့တဲ့" }
    ]
  },
  {
    c: "目",
    en: "eye",
    mm: "မျက်လုံး",
    on: "モク",
    kun: "め",
    s: 5,
    jlpt: 5,
    combinations: [
      { word: "目が悪い", reading: "めがわるい", meaning_en: "bad eyesight", meaning_mm: "မျက်စိမှုန်တယ်" },
      { word: "目的", reading: "もくてき", meaning_en: "purpose", meaning_mm: "ရည်ရွယ်ချက်" }
    ],
    full_meaning_en: "Eye or item.",
    full_meaning_mm: "မျက်လုံး ဒါမှမဟုတ် အမှတ်။",
    examples: [
      { jp: "目次", en: "table of contents", mm: "အကြောင်းအရာများ" },
      { jp: "目上", en: "superior", mm: "အကြီးအကဲ" }
    ]
  },
  {
    c: "口",
    en: "mouth",
    mm: "ပါးစပ်",
    on: "コウ/ク",
    kun: "くち/く",
    s: 3,
    jlpt: 5,
    combinations: [
      { word: "出口", reading: "でぐち", meaning_en: "exit", meaning_mm: "ထွက်ပေါက်" },
      { word: "入口", reading: "いりぐち", meaning_en: "entrance", meaning_mm: "ဝင်ပေါက်" }
    ],
    full_meaning_en: "Mouth or opening.",
    full_meaning_mm: "ပါးစပ် ဒါမှမဟုတ် အပေါက်။",
    examples: [
      { jp: "口紅", en: "lipstick", mm: "နှုတ်ခမ်းမွှေး" },
      { jp: "窓口", en: "window/counter", mm: "ဝင်းဒိုး" }
    ]
  },
  {
    c: "歯",
    en: "tooth",
    mm: "သွား",
    on: "シ",
    kun: "は",
    s: 12,
    jlpt: 5,
    combinations: [
      { word: "歯医者", reading: "はいしゃ", meaning_en: "dentist", meaning_mm: "သွားဆရာဝန်" },
      { word: "歯ブラシ", reading: "はブラシ", meaning_en: "toothbrush", meaning_mm: "သွားတိုက်တံ" }
    ],
    full_meaning_en: "Tooth.",
    full_meaning_mm: "သွား။",
    examples: [
      { jp: "歯車", en: "gear", mm: "ဂီယာ" },
      { jp: "虫歯", en: "cavity", mm: "သွားပိုးစားတာ" }
    ]
  },
  {
    c: "町",
    en: "town",
    mm: "မြို့",
    on: "チョウ",
    kun: "まち",
    s: 7,
    jlpt: 5,
    combinations: [
      { word: "町内", reading: "ちょうない", meaning_en: "within the town", meaning_mm: "မြို့အတွင်း" },
      { word: "下町", reading: "したまち", meaning_en: "downtown", meaning_mm: "မြို့လယ်" }
    ],
    full_meaning_en: "Town or street.",
    full_meaning_mm: "မြို့ ဒါမှမဟုတ် လမ်း။",
    examples: [
      { jp: "町長", en: "town mayor", mm: "မြို့တော်ဝန်" },
      { jp: "町並み", en: "townscape", mm: "မြို့ပုံစံ" }
    ]
  },
  {
    c: "村",
    en: "village",
    mm: "ကျေးရွာ",
    on: "ソン",
    kun: "むら",
    s: 7,
    jlpt: 5,
    combinations: [
      { word: "村長", reading: "そんちょう", meaning_en: "village head", meaning_mm: "ကျေးရွာခေါင်းဆောင်" },
      { word: "農村", reading: "のうそん", meaning_en: "farming village", meaning_mm: "စိုက်ပျိုးရွာ" }
    ],
    full_meaning_en: "Village.",
    full_meaning_mm: "ကျေးရွာ။",
    examples: [
      { jp: "漁村", en: "fishing village", mm: "ငါးဖမ်းကျေးရွာ" },
      { jp: "村人", en: "villager", mm: "ကျေးရွာသား" }
    ]
  },
  {
    c: "市",
    en: "city/market",
    mm: "မြို့/ဈေး",
    on: "シ",
    kun: "いち",
    s: 5,
    jlpt: 5,
    combinations: [
      { word: "市役所", reading: "しやくしょ", meaning_en: "city hall", meaning_mm: "မြို့တော်ခန်းမ" },
      { word: "市場", reading: "いちば/しじょう", meaning_en: "market", meaning_mm: "ဈေး" }
    ],
    full_meaning_en: "City or market.",
    full_meaning_mm: "မြို့ ဒါမှမဟုတ် ဈေး။",
    examples: [
      { jp: "都市", en: "city", mm: "မြို့ပြ" },
      { jp: "市民", en: "citizen", mm: "မြို့သား" }
    ]
  },
  {
    c: "道",
    en: "road/way",
    mm: "လမ်း/နည်းလမ်း",
    on: "ドウ/トウ",
    kun: "みち",
    s: 12,
    jlpt: 5,
    combinations: [
      { word: "道具", reading: "どうぐ", meaning_en: "tool", meaning_mm: "ကိရိယာ" },
      { word: "北海道", reading: "ほっかいどう", meaning_en: "Hokkaido", meaning_mm: "ဟော့ကိုင်းဒိုး" }
    ],
    full_meaning_en: "Road, way, or method.",
    full_meaning_mm: "လမ်း၊ နည်းလမ်း၊ နည်းစနစ်။",
    examples: [
      { jp: "道路", en: "road", mm: "လမ်းမ" },
      { jp: "柔道", en: "judo", mm: "ဂျူဒို" }
    ]
  },
  {
    c: "国",
    en: "country",
    mm: "နိုင်ငံ",
    on: "コク",
    kun: "くに",
    s: 8,
    jlpt: 5,
    combinations: [
      { word: "中国", reading: "ちゅうごく", meaning_en: "China", meaning_mm: "တရုတ်" },
      { word: "外国", reading: "がいこく", meaning_en: "foreign country", meaning_mm: "နိုင်ငံခြား" }
    ],
    full_meaning_en: "Country or nation.",
    full_meaning_mm: "နိုင်ငံ။",
    examples: [
      { jp: "アメリカ国", en: "United States", mm: "အမေရိကန်" },
      { jp: "国語", en: "national language", mm: "တိုင်းရင်းဘာသာ" }
    ]
  },
  {
    c: "方",
    en: "direction/person",
    mm: "အရပ်/လူ",
    on: "ホウ",
    kun: "かた",
    s: 4,
    jlpt: 5,
    combinations: [
      { word: "方角", reading: "ほうがく", meaning_en: "direction", meaning_mm: "ဦးတည်ချက်" },
      { word: "方法", reading: "ほうほう", meaning_en: "method", meaning_mm: "နည်းလမ်း" }
    ],
    full_meaning_en: "Direction, way, or person (polite).",
    full_meaning_mm: "အရပ်၊ နည်းလမ်း၊ လူ (ကျေးဇူးပြု၍)။",
    examples: [
      { jp: "この方", en: "this person", mm: "ဒီလူ" },
      { jp: "書き方", en: "way of writing", mm: "ရေးသားနည်း" }
    ]
  },
  {
    c: "門",
    en: "gate",
    mm: "တံခါး",
    on: "モン",
    kun: "かど",
    s: 8,
    jlpt: 5,
    combinations: [
      { word: "門前", reading: "もんぜん", meaning_en: "in front of the gate", meaning_mm: "တံခါးရှေ့" },
      { word: "専門", reading: "せんもん", meaning_en: "specialty", meaning_mm: "အထူးပြု" }
    ],
    full_meaning_en: "Gate.",
    full_meaning_mm: "တံခါး။",
    examples: [
      { jp: "門松", en: "New Year's pine decoration", mm: "နှစ်သစ်အလှဆင်" },
      { jp: "入門", en: "introduction", mm: "မိတ်ဆက်" }
    ]
  },
  {
    c: "週",
    en: "week",
    mm: "အပတ်",
    on: "シュウ",
    kun: "",
    s: 11,
    jlpt: 5,
    combinations: [
      { word: "先週", reading: "せんしゅう", meaning_en: "last week", meaning_mm: "ပြီးခဲ့တဲ့အပတ်" },
      { word: "今週", reading: "こんしゅう", meaning_en: "this week", meaning_mm: "ဒီအပတ်" }
    ],
    full_meaning_en: "Week.",
    full_meaning_mm: "အပတ်။",
    examples: [
      { jp: "週末", en: "weekend", mm: "အပတ်စဉ်" },
      { jp: "毎週", en: "every week", mm: "အပတ်တိုင်း" }
    ]
  },
  {
    c: "勉",
    en: "endeavor",
    mm: "အားထုတ်",
    on: "ベン",
    kun: "",
    s: 10,
    jlpt: 5,
    combinations: [
      { word: "勉強", reading: "べんきょう", meaning_en: "study", meaning_mm: "စာကြည့်" },
      { word: "勉学", reading: "べんがく", meaning_en: "studying", meaning_mm: "ပညာသင်ယူ" }
    ],
    full_meaning_en: "Endeavor or exertion.",
    full_meaning_mm: "အားထုတ် ဒါမှမဟုတ် ကြိုးစား။",
    examples: [
      { jp: "勉強する", en: "to study", mm: "စာကြည့်တယ်" },
      { jp: "勤勉", en: "industrious", mm: "လုံ့လဝီရိယ" }
    ]
  },
  {
    c: "強",
    en: "strong",
    mm: "အားကောင်း",
    on: "キョウ/ゴウ",
    kun: "つよ",
    s: 11,
    jlpt: 5,
    combinations: [
      { word: "強い", reading: "つよい", meaning_en: "strong", meaning_mm: "အားကောင်း" },
      { word: "勉強", reading: "べんきょう", meaning_en: "study", meaning_mm: "စာကြည့်" }
    ],
    full_meaning_en: "Strong or powerful.",
    full_meaning_mm: "အားကောင်း ဒါမှမဟုတ် အစွမ်းထက်။",
    examples: [
      { jp: "強化", en: "strengthening", mm: "အားကောင်းအောင်လုပ်" },
      { jp: "強風", en: "strong wind", mm: "လေပြင်း" }
    ]
  },
  {
    c: "親",
    en: "parent/intimate",
    mm: "မိဘ/ရင်းနှီး",
    on: "シン",
    kun: "おや/した",
    s: 16,
    jlpt: 5,
    combinations: [
      { word: "親切", reading: "しんせつ", meaning_en: "kindness", meaning_mm: "ကြင်နာ" },
      { word: "両親", reading: "りょうしん", meaning_en: "parents", meaning_mm: "မိဘနှစ်ပါး" }
    ],
    full_meaning_en: "Parent, intimacy, or relative.",
    full_meaning_mm: "မိဘ၊ ရင်းနှီး၊ ဆွေမျိုး။",
    examples: [
      { jp: "親子", en: "parent and child", mm: "မိဘနဲ့သားသမီး" },
      { jp: "親友", en: "close friend", mm: "ရင်းနှီးတဲ့သူငယ်ချင်း" }
    ]
  }
]

# Seed data to database
n5_kanji_complete.each do |k|
  kanji = Kanji.find_or_create_by!(character: k[:c])

  kanji.update!(
    meaning_en:       k[:en],
    meaning_mm:       k[:mm],
    onyomi:           k[:on],
    kunyomi:          k[:kun],
    strokes:          k[:s],
    jlpt_level:       k[:jlpt].to_s,
    full_meaning_en:  k[:full_meaning_en],
    full_meaning_mm:  k[:full_meaning_mm],
    examples:         k[:examples],
    combinations:     k[:combinations]
  )
  puts "Seeded/updated kanji: #{k[:c]}"
end


puts "Successfully processed #{n5_kanji_complete.count} N5 kanji!"
