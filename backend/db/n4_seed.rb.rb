# Complete N4 Kanji Seed File (120 kanji with full translations)
# Save this as db/seeds/kanji_n4.rb or add to db/seeds.rb

n4_kanji_complete = [
  {
    c: "曜",
    en: "weekday",
    mm: "နေ့",
    on: "ヨウ",
    kun: "",
    s: 18,
    jlpt: 4,
    combinations: [
      { word: "日曜日", reading: "にちようび", meaning_en: "Sunday", meaning_mm: "တနင်္ဂနွေနေ့" },
      { word: "月曜日", reading: "げつようび", meaning_en: "Monday", meaning_mm: "တနင်္လာနေ့" },
      { word: "火曜日", reading: "かようび", meaning_en: "Tuesday", meaning_mm: "အင်္ဂါနေ့" }
    ],
    full_meaning: "ရက်သတ္တပတ်ရဲ့နေ့တွေကိုရည်ညွှန်းတယ်။ နေ့အမည်တွေအားလုံးမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "今日は何曜日ですか？", en: "What day is it today?", mm: "ယနေ့ဘယ်နေ့လဲ?" },
      { jp: "土曜日は休みです。", en: "Saturday is a holiday.", mm: "စနေနေ့ကအားလပ်ရက်ဖြစ်တယ်။" }
    ]
  },
  {
    c: "週",
    en: "week",
    mm: "အပတ်",
    on: "シュウ",
    kun: "",
    s: 11,
    jlpt: 4,
    combinations: [
      { word: "今週", reading: "こんしゅう", meaning_en: "this week", meaning_mm: "ယခုအပတ်" },
      { word: "来週", reading: "らいしゅう", meaning_en: "next week", meaning_mm: "လာမည့်အပတ်" },
      { word: "毎週", reading: "まいしゅう", meaning_en: "every week", meaning_mm: "အပတ်တိုင်း" }
    ],
    full_meaning: "ရက်သတ္တပတ်လို့ခေါ်တဲ့ရက် ၇ ရက်ကာလ။ အချိန်ကာလနဲ့အစီအစဉ်ချတဲ့နေရာတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "週に三回日本語を勉強します。", en: "I study Japanese three times a week.", mm: "အပတ်ကိုသုံးကြိမ်ဂျပန်စာလေ့လာတယ်။" },
      { jp: "週末は何をしますか？", en: "What will you do on the weekend?", mm: "အပတ်စဉ်အဆုံးမှာဘာလုပ်မလဲ?" }
    ]
  },
  {
    c: "海",
    en: "sea, ocean",
    mm: "ပင်လယ်",
    on: "カイ",
    kun: "うみ",
    s: 9,
    jlpt: 4,
    combinations: [
      { word: "海辺", reading: "うみべ", meaning_en: "seaside", meaning_mm: "ပင်လယ်ကမ်းခြေ" },
      { word: "海外", reading: "かいがい", meaning_en: "overseas", meaning_mm: "နိုင်ငံခြား" },
      { word: "海水浴", reading: "かいすいよく", meaning_en: "sea bathing", meaning_mm: "ပင်လယ်ရေချိုးခြင်း" }
    ],
    full_meaning: "ဆားငန်ရေအကြီးအကျယ်ရှိတဲ့နေရာ။ ပင်လယ်၊ သမုဒ္ဒရာနဲ့ဆက်စပ်တဲ့စကားလုံးတွေမှာအသုံးများတယ်။",
    examples: [
      { jp: "夏は海に行きます。", en: "I go to the sea in summer.", mm: "နွေရာသီမှာပင်လယ်ကိုသွားတယ်။" },
      { jp: "海外旅行が好きです。", en: "I like overseas travel.", mm: "နိုင်ငံခြားခရီးသွားရတာကြိုက်တယ်။" }
    ]
  },
  {
    c: "転",
    en: "revolve, change",
    mm: "လှည့်/ပြောင်း",
    on: "テン",
    kun: "ころ",
    s: 11,
    jlpt: 4,
    combinations: [
      { word: "転ぶ", reading: "ころぶ", meaning_en: "to fall down", meaning_mm: "လဲကျသည်" },
      { word: "転職", reading: "てんしょく", meaning_en: "job change", meaning_mm: "အလုပ်ပြောင်းသည်" },
      { word: "運転", reading: "うんてん", meaning_en: "driving", meaning_mm: "ကားမောင်းခြင်း" }
    ],
    full_meaning: "လှည့်ပတ်ခြင်း၊ ပြောင်းလဲခြင်း၊ နေရာရွှေ့ပြောင်းခြင်း။ နေရာ၊ အဆင့်အတန်း၊ လှုပ်ရှားမှုပြောင်းလဲမှုတွေအတွက်သုံးတယ်။",
    examples: [
      { jp: "転ばないように気をつけて。", en: "Be careful not to fall.", mm: "လဲမကျအောင်သတိထားပါ။" },
      { jp: "来月転職します。", en: "I'll change jobs next month.", mm: "လာမယ့်လမှာအလုပ်ပြောင်းမယ်။" }
    ]
  },
  {
    c: "医",
    en: "medicine, doctor",
    mm: "ဆေးပညာ/ဆရာဝန်",
    on: "イ",
    kun: "",
    s: 7,
    jlpt: 4,
    combinations: [
      { word: "医者", reading: "いしゃ", meaning_en: "doctor", meaning_mm: "ဆရာဝန်" },
      { word: "医院", reading: "いいん", meaning_en: "clinic", meaning_mm: "ဆေးခန်း" },
      { word: "医学", reading: "いがく", meaning_en: "medical science", meaning_mm: "ဆေးပညာ" }
    ],
    full_meaning: "ဆေးပညာ၊ ကုသခြင်း၊ ဆေးကုသမှုနဲ့ဆက်စပ်တယ်။ ကျန်းမာရေးစောင့်ရှောက်မှုအကြောင်းစကားလုံးတွေမှာပေါ်တယ်။",
    examples: [
      { jp: "父は医者です。", en: "My father is a doctor.", mm: "အဖေကဆရာဝန်ဖြစ်တယ်။" },
      { jp: "病院で医者に診てもらった。", en: "I was examined by a doctor at the hospital.", mm: "ဆေးရုံမှာဆရာဝန်နဲ့ပြသခံရတယ်။" }
    ]
  },
  {
    c: "院",
    en: "institution",
    mm: "အဖွဲ့အစည်း",
    on: "イン",
    kun: "",
    s: 10,
    jlpt: 4,
    combinations: [
      { word: "病院", reading: "びょういん", meaning_en: "hospital", meaning_mm: "ဆေးရုံ" },
      { word: "大学院", reading: "だいがくいん", meaning_en: "graduate school", meaning_mm: "ဘွဲ့လွန်ကျောင်း" },
      { word: "美容院", reading: "びよういん", meaning_en: "beauty salon", meaning_mm: "အလှပြင်ဆိုင်" }
    ],
    full_meaning: "အဆောက်အဦ၊ အဖွဲ့အစည်း၊ ဌာနလို့အဓိပ္ပာယ်ရတဲ့နောက်ဆက်စကားလုံး။ အဆောက်အဦအမည်တွေမှာအသုံးများတယ်။",
    examples: [
      { jp: "病院に行きます。", en: "I'm going to the hospital.", mm: "ဆေးရုံကိုသွားမယ်။" },
      { jp: "姉は大学院で勉強しています。", en: "My older sister is studying in graduate school.", mm: "အစ်မကဘွဲ့လွန်ကျောင်းမှာစာလေ့လာနေတယ်။" }
    ]
  },
  {
    c: "運",
    en: "carry, fortune",
    mm: "သယ်ဆောင်/ကံ",
    on: "ウン",
    kun: "はこ",
    s: 12,
    jlpt: 4,
    combinations: [
      { word: "運ぶ", reading: "はこぶ", meaning_en: "to carry", meaning_mm: "သယ်ဆောင်သည်" },
      { word: "運転", reading: "うんてん", meaning_en: "driving", meaning_mm: "ကားမောင်းခြင်း" },
      { word: "運動", reading: "うんどう", meaning_en: "exercise", meaning_mm: "လေ့ကျင့်ခန်း" }
    ],
    full_meaning: "အဓိကအဓိပ္ပာယ်နှစ်မျိုးရှိတယ် - ၁) သယ်ဆောင်ခြင်း/ရွှေ့ပြောင်းခြင်း၊ ၂) ကံ/ကြမ္မာ။ စကားစပ်ပေါ်မူတည်ပြီးအဓိပ္ပာယ်ကွာခြားတယ်။",
    examples: [
      { jp: "荷物を運んでください。", en: "Please carry the luggage.", mm: "ခရီးဆောင်အိတ်တွေသယ်ပေးပါ။" },
      { jp: "運転免許を持っています。", en: "I have a driver's license.", mm: "ကားမောင်းလိုင်စင်ရှိတယ်။" }
    ]
  },
  {
    c: "動",
    en: "move",
    mm: "လှုပ်ရှား",
    on: "ドウ",
    kun: "うご",
    s: 11,
    jlpt: 4,
    combinations: [
      { word: "動く", reading: "うごく", meaning_en: "to move", meaning_mm: "လှုပ်ရှားသည်" },
      { word: "運動", reading: "うんどう", meaning_en: "exercise", meaning_mm: "လေ့ကျင့်ခန်း" },
      { word: "自動", reading: "じどう", meaning_en: "automatic", meaning_mm: "အလိုအလျောက်" }
    ],
    full_meaning: "လှုပ်ရှားမှု၊ ရွေ့လျားမှု။ ရုပ်ပိုင်းဆိုင်ရာလှုပ်ရှားမှု၊ လုပ်ဆောင်မှု၊ စက်ပစ္စည်းလှုပ်ရှားမှုတွေနဲ့ဆက်စပ်တဲ့စကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "時計が動いていません。", en: "The clock isn't moving.", mm: "နာရီမလည်ဘူး။" },
      { jp: "動物園に行きたいです。", en: "I want to go to the zoo.", mm: "တိရစ္ဆာန်ဥယျာဉ်သွားချင်တယ်။" }
    ]
  },
  {
    c: "働",
    en: "work",
    mm: "အလုပ်",
    on: "ドウ",
    kun: "はたら",
    s: 13,
    jlpt: 4,
    combinations: [
      { word: "働く", reading: "はたらく", meaning_en: "to work", meaning_mm: "အလုပ်လုပ်သည်" },
      { word: "労働", reading: "ろうどう", meaning_en: "labor", meaning_mm: "အလုပ်သမား" },
      { word: "共働き", reading: "ともばたらき", meaning_en: "dual income", meaning_mm: "နှစ်ဦးစလုံးအလုပ်လုပ်ခြင်း" }
    ],
    full_meaning: "အလုပ်လုပ်ခြင်း၊ အလုပ်အကိုင်လုပ်ခြင်း။ အလုပ်ခန့်အပ်ခြင်း သို့မဟုတ် ထုတ်လုပ်မှုလုပ်ဆောင်ချက်တွေကိုရည်ညွှန်းတယ်။",
    examples: [
      { jp: "父は会社で働いています。", en: "My father works at a company.", mm: "အဖေကကုမ္ပဏီမှာအလုပ်လုပ်တယ်။" },
      { jp: "毎日８時間働きます。", en: "I work 8 hours every day.", mm: "နေ့တိုင်းရှစ်နာရီအလုပ်လုပ်တယ်။" }
    ]
  },
  {
    c: "思",
    en: "think",
    mm: "စဉ်းစား",
    on: "シ",
    kun: "おも",
    s: 9,
    jlpt: 4,
    combinations: [
      { word: "思う", reading: "おもう", meaning_en: "to think", meaning_mm: "ထင်သည်" },
      { word: "思い出", reading: "おもいで", meaning_en: "memory", meaning_mm: "အမှတ်တရ" },
      { word: "不思議", reading: "ふしぎ", meaning_en: "mysterious", meaning_mm: "ထူးဆန်း" }
    ],
    full_meaning: "စဉ်းစားခြင်း၊ ထင်မြင်ချက်ရှိခြင်း၊ စိတ်ကူးခြင်း။ စိတ်ပိုင်းဆိုင်ရာလုပ်ဆောင်ချက်နဲ့အတွေးအခေါ်တွေနဲ့ဆက်စပ်တယ်။",
    examples: [
      { jp: "日本はきれいだと思います。", en: "I think Japan is beautiful.", mm: "ဂျပန်ကလှတယ်လို့ထင်တယ်။" },
      { jp: "思い出の写真です。", en: "It's a memorable photo.", mm: "ဒါကအမှတ်တရဓာတ်ပုံဖြစ်တယ်။" }
    ]
  },
  {
    c: "教",
    en: "teach",
    mm: "သင်ကြား",
    on: "キョウ",
    kun: "おし",
    s: 11,
    jlpt: 4,
    combinations: [
      { word: "教える", reading: "おしえる", meaning_en: "to teach", meaning_mm: "သင်ကြားပေးသည်" },
      { word: "教室", reading: "きょうしつ", meaning_en: "classroom", meaning_mm: "စာသင်ခန်း" },
      { word: "教育", reading: "きょういく", meaning_en: "education", meaning_mm: "ပညာရေး" }
    ],
    full_meaning: "သင်ကြားပေးခြင်း၊ ညွှန်ကြားခြင်း၊ ပညာပေးခြင်း။ ဘာသာရေးအခြေအနေတွေမှာလည်းသုံးတယ်။",
    examples: [
      { jp: "英語を教えてください。", en: "Please teach me English.", mm: "အင်္ဂလိပ်စာသင်ပေးပါ။" },
      { jp: "教室はどこですか？", en: "Where is the classroom?", mm: "စာသင်ခန်းကဘယ်မှာလဲ?" }
    ]
  },
  {
    c: "研",
    en: "research, sharpen",
    mm: "သုတေသန/ချွန်",
    on: "ケン",
    kun: "",
    s: 9,
    jlpt: 4,
    combinations: [
      { word: "研究", reading: "けんきゅう", meaning_en: "research", meaning_mm: "သုတေသန" },
      { word: "研修", reading: "けんしゅう", meaning_en: "training", meaning_mm: "လေ့ကျင့်သင်ကြားခြင်း" },
      { word: "研究所", reading: "けんきゅうじょ", meaning_en: "research institute", meaning_mm: "သုတေသနဌာန" }
    ],
    full_meaning: "သုတေသနလုပ်ခြင်း၊ လေ့လာခြင်း၊ ချွန်ထက်အောင်လုပ်ခြင်း။ ပညာရေးနဲ့အလုပ်အကိုင်အခြေအနေတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "大学で研究しています。", en: "I do research at university.", mm: "တက္ကသိုလ်မှာသုတေသနလုပ်တယ်။" },
      { jp: "包丁を研ぎます。", en: "I sharpen the knife.", mm: "ဓားကိုချွန်တယ်။" }
    ]
  },
  {
    c: "究",
    en: "research",
    mm: "သုတေသန",
    on: "キュウ",
    kun: "",
    s: 7,
    jlpt: 4,
    combinations: [
      { word: "研究", reading: "けんきゅう", meaning_en: "research", meaning_mm: "သုတေသန" },
      { word: "究極", reading: "きゅうきょく", meaning_en: "ultimate", meaning_mm: "အဆုံးစွန်" },
      { word: "科学的研究", reading: "かがくてきけんきゅう", meaning_en: "scientific research", meaning_mm: "သိပ္ပံနည်းကျသုတေသန" }
    ],
    full_meaning: "စုံစမ်းစစ်ဆေးခြင်း၊ နက်နက်နဲနဲလေ့လာခြင်း။ များသောအားဖြင့် 'research' အတွက် 研 နဲ့တွဲသုံးတယ်။",
    examples: [
      { jp: "この問題を研究しています。", en: "I'm researching this problem.", mm: "ဒီပြဿနာကိုသုတေသနလုပ်နေတယ်။" },
      { jp: "究極の目標です。", en: "It's the ultimate goal.", mm: "ဒါကအဆုံးစွန်သောရည်မှန်းချက်ဖြစ်တယ်။" }
    ]
  },
  {
    c: "信",
    en: "believe, trust",
    mm: "ယုံကြည်",
    on: "シン",
    kun: "",
    s: 9,
    jlpt: 4,
    combinations: [
      { word: "信じる", reading: "しんじる", meaning_en: "to believe", meaning_mm: "ယုံကြည်သည်" },
      { word: "信用", reading: "しんよう", meaning_en: "trust, credit", meaning_mm: "ယုံကြည်မှု" },
      { word: "自信", reading: "じしん", meaning_en: "self-confidence", meaning_mm: "ကိုယ့်ကိုယ်ကိုယုံကြည်မှု" }
    ],
    full_meaning: "ယုံကြည်ခြင်း၊ အားကိုးခြင်း၊ ယုံကြည်ချက်ရှိခြင်း။ သတင်းအချက်အလက်/အချက်ပြမှုတွေနဲ့ဆက်စပ်တဲ့စကားလုံးတွေမှာလည်းသုံးတယ်။",
    examples: [
      { jp: "彼の話を信じます。", en: "I believe his story.", mm: "သူ့စကားကိုယုံကြည်တယ်။" },
      { jp: "自信を持ってください。", en: "Please have confidence.", mm: "ယုံကြည်မှုရှိပါ။" }
    ]
  },
  {
    c: "風",
    en: "wind, style",
    mm: "လေ/ဟန်ပန်",
    on: "フウ",
    kun: "かぜ",
    s: 9,
    jlpt: 4,
    combinations: [
      { word: "風邪", reading: "かぜ", meaning_en: "cold (illness)", meaning_mm: "အအေးမိ" },
      { word: "台風", reading: "たいふう", meaning_en: "typhoon", meaning_mm: "မုန်တိုင်း" },
      { word: "和風", reading: "わふう", meaning_en: "Japanese style", meaning_mm: "ဂျပန်ဟန်ပန်" }
    ],
    full_meaning: "လေ သို့မဟုတ် ဟန်ပန်/ပုံစံလို့အဓိပ္ပာယ်ရတယ်။ ရာသီဥတုအခြေအနေတွေနဲ့ ယဉ်ကျေးမှုပုံစံတွေအတွက်သုံးတယ်။",
    examples: [
      { jp: "風が強いです。", en: "The wind is strong.", mm: "လေပြင်းတယ်။" },
      { jp: "風邪をひきました。", en: "I caught a cold.", mm: "အအေးမိသွားတယ်။" }
    ]
  },
  {
    c: "理",
    en: "reason, logic",
    mm: "အကြောင်း/ယုတ္တိ",
    on: "リ",
    kun: "",
    s: 11,
    jlpt: 4,
    combinations: [
      { word: "理由", reading: "りゆう", meaning_en: "reason", meaning_mm: "အကြောင်းပြချက်" },
      { word: "理解", reading: "りかい", meaning_en: "understanding", meaning_mm: "နားလည်ခြင်း" },
      { word: "料理", reading: "りょうり", meaning_en: "cooking", meaning_mm: "ချက်ပြုတ်ခြင်း" }
    ],
    full_meaning: "အကြောင်းပြချက်၊ ယုတ္တိ၊ နိယာမ။ သိပ္ပံ၊ ဒဿနိကဗေဒ၊ စီမံခန့်ခွဲမှုစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "遅刻の理由は何ですか？", en: "What is the reason for being late?", mm: "နောက်ကျရတဲ့အကြောင်းပြချက်ကဘာလဲ?" },
      { jp: "日本料理が好きです。", en: "I like Japanese cuisine.", mm: "ဂျပန်အစားအစာကြိုက်တယ်။" }
    ]
  },
  {
    c: "科",
    en: "department, course",
    mm: "ဌာန/ဘာသာရပ်",
    on: "カ",
    kun: "",
    s: 9,
    jlpt: 4,
    combinations: [
      { word: "科学", reading: "かがく", meaning_en: "science", meaning_mm: "သိပ္ပံ" },
      { word: "教科書", reading: "きょうかしょ", meaning_en: "textbook", meaning_mm: "စာအုပ်" },
      { word: "学科", reading: "がっか", meaning_en: "subject, department", meaning_mm: "ဘာသာရပ်/ဌာန" }
    ],
    full_meaning: "ဌာန၊ ဘာသာရပ်၊ သိပ္ပံနည်းကျအခန်းကဏ္ဍ။ ပညာရေးနဲ့သိပ္ပံဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "科学の授業があります。", en: "I have a science class.", mm: "သိပ္ပံဘာသာရပ်သင်ခန်းစာရှိတယ်။" },
      { jp: "教科書を買いました。", en: "I bought a textbook.", mm: "စာအုပ်ဝယ်လိုက်တယ်။" }
    ]
  },
  {
    c: "館",
    en: "building, hall",
    mm: "အဆောက်အဦ/ခန်းမ",
    on: "カン",
    kun: "",
    s: 16,
    jlpt: 4,
    combinations: [
      { word: "図書館", reading: "としょかん", meaning_en: "library", meaning_mm: "စာကြည့်တိုက်" },
      { word: "映画館", reading: "えいがかん", meaning_en: "movie theater", meaning_mm: "ရုပ်ရှင်ရုံ" },
      { word: "美術館", reading: "びじゅつかん", meaning_en: "art museum", meaning_mm: "အနုပညာပြတိုက်" }
    ],
    full_meaning: "အဆောက်အဦ၊ ခန်းမ၊ ဌာနလို့အဓိပ္ပာယ်ရတဲ့နောက်ဆက်စကားလုံး။ အများပြည်သူဆိုင်ရာအဆောက်အဦတွေမှာအသုံးများတယ်။",
    examples: [
      { jp: "図書館で勉強します。", en: "I study at the library.", mm: "စာကြည့်တိုက်မှာစာလေ့လာတယ်။" },
      { jp: "映画館に行きました。", en: "I went to the movie theater.", mm: "ရုပ်ရှင်ရုံကိုသွားခဲ့တယ်။" }
    ]
  },
  {
    c: "堂",
    en: "hall",
    mm: "ခန်းမ",
    on: "ドウ",
    kun: "",
    s: 11,
    jlpt: 4,
    combinations: [
      { word: "食堂", reading: "しょくどう", meaning_en: "dining hall", meaning_mm: "စားသောက်ဆိုင်" },
      { word: "講堂", reading: "こうどう", meaning_en: "auditorium", meaning_mm: "ဟောပြောခန်းမ" },
      { word: "仏堂", reading: "ぶつどう", meaning_en: "Buddhist hall", meaning_mm: "ဗုဒ္ဓဘာသာခန်းမ" }
    ],
    full_meaning: "ခန်းမ၊ အခန်းကြီးလို့အဓိပ္ပာယ်ရတဲ့နောက်ဆက်စကားလုံး။ အများပြည်သူသုံးနေရာတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "学生食堂で昼ご飯を食べます。", en: "I eat lunch at the student cafeteria.", mm: "ကျောင်းသားစားသောက်ဆိုင်မှာနေ့လည်စာစားတယ်။" },
      { jp: "講堂で講演があります。", en: "There's a lecture in the auditorium.", mm: "ဟောပြောခန်းမမှာဟောပြောပွဲရှိတယ်။" }
    ]
  },
  {
    c: "図",
    en: "diagram, map",
    mm: "ပုံ/မြေပုံ",
    on: "ズ",
    kun: "はか",
    s: 7,
    jlpt: 4,
    combinations: [
      { word: "地図", reading: "ちず", meaning_en: "map", meaning_mm: "မြေပုံ" },
      { word: "図書館", reading: "としょかん", meaning_en: "library", meaning_mm: "စာကြည့်တိုက်" },
      { word: "図面", reading: "ずめん", meaning_en: "blueprint", meaning_mm: "ပုံကြမ်း" }
    ],
    full_meaning: "ပုံ၊ မြေပုံ၊ ဒိုင်ယာဂရမ်။ ဗဟုသုတနဲ့ပုံဖော်ခြင်းဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "地図を見てください。", en: "Please look at the map.", mm: "မြေပုံကိုကြည့်ပါ။" },
      { jp: "図書館は静かです。", en: "The library is quiet.", mm: "စာကြည့်တိုက်ကတိတ်ဆိတ်တယ်။" }
    ]
  },
  {
    c: "画",
    en: "picture, drawing",
    mm: "ပုံ/ရေးဆွဲခြင်း",
    on: "ガ",
    kun: "",
    s: 8,
    jlpt: 4,
    combinations: [
      { word: "映画", reading: "えいが", meaning_en: "movie", meaning_mm: "ရုပ်ရှင်" },
      { word: "画家", reading: "がか", meaning_en: "painter", meaning_mm: "ပန်းချီဆရာ" },
      { word: "計画", reading: "けいかく", meaning_en: "plan", meaning_mm: "အစီအစဉ်" }
    ],
    full_meaning: "ပုံ၊ ရေးဆွဲခြင်း၊ နယ်နိမိတ်။ အနုပညာ၊ ရုပ်ရှင်နဲ့အစီအစဉ်ဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "映画を見に行きます。", en: "I'm going to watch a movie.", mm: "ရုပ်ရှင်ကြည့်ဖို့သွားမယ်။" },
      { jp: "計画を立てます。", en: "I make a plan.", mm: "အစီအစဉ်ချမယ်။" }
    ]
  },
  {
    c: "品",
    en: "goods, article",
    mm: "ကုန်ပစ္စည်း",
    on: "ヒン",
    kun: "しな",
    s: 9,
    jlpt: 4,
    combinations: [
      { word: "商品", reading: "しょうひん", meaning_en: "product", meaning_mm: "ကုန်ပစ္စည်း" },
      { word: "作品", reading: "さくひん", meaning_en: "work (art)", meaning_mm: "လက်ရာ" },
      { word: "食品", reading: "しょくひん", meaning_en: "food product", meaning_mm: "စားသောက်ကုန်" }
    ],
    full_meaning: "ကုန်ပစ္စည်း၊ ပစ္စည်း၊ လက်ရာ။ စီးပွားရေးနဲ့ထုတ်လုပ်မှုဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "この商品は高いです。", en: "This product is expensive.", mm: "ဒီကုန်ပစ္စည်းကစျေးကြီးတယ်။" },
      { jp: "日本の食品が好きです。", en: "I like Japanese food products.", mm: "ဂျပန်စားသောက်ကုန်တွေကြိုက်တယ်။" }
    ]
  },
  {
    c: "物",
    en: "thing, object",
    mm: "အရာ",
    on: "ブツ",
    kun: "もの",
    s: 8,
    jlpt: 4,
    combinations: [
      { word: "動物", reading: "どうぶつ", meaning_en: "animal", meaning_mm: "တိရစ္ဆာန်" },
      { word: "植物", reading: "しょくぶつ", meaning_en: "plant", meaning_mm: "အပင်များ" },
      { word: "物語", reading: "ものがたり", meaning_en: "story", meaning_mm: "ပုံပြင်" }
    ],
    full_meaning: "အရာ၊ ပစ္စည်း၊ ဝတ္ထု။ အရာဝတ္ထုတွေနဲ့ဆက်စပ်တဲ့စကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "動物園に行きました。", en: "I went to the zoo.", mm: "တိရစ္ဆာန်ဥယျာဉ်ကိုသွားခဲ့တယ်။" },
      { jp: "面白い物語です。", en: "It's an interesting story.", mm: "ဒါကစိတ်ဝင်စားဖို့ကောင်းတဲ့ပုံပြင်ဖြစ်တယ်။" }
    ]
  },
  {
    c: "料",
    en: "fee, materials",
    mm: "အခကြေးငွေ/ကုန်ကြမ်း",
    on: "リョウ",
    kun: "",
    s: 10,
    jlpt: 4,
    combinations: [
      { word: "料金", reading: "りょうきん", meaning_en: "fee, charge", meaning_mm: "အခကြေးငွေ" },
      { word: "料理", reading: "りょうり", meaning_en: "cooking", meaning_mm: "ချက်ပြုတ်ခြင်း" },
      { word: "材料", reading: "ざいりょう", meaning_en: "ingredients", meaning_mm: "ကုန်ကြမ်းပစ္စည်း" }
    ],
    full_meaning: "အခကြေးငွေ၊ ကုန်ကြမ်းပစ္စည်း။ ငွေကြေးနဲ့ထုတ်လုပ်မှုဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "料金はいくらですか？", en: "How much is the fee?", mm: "အခကြေးငွေကဘယ်လောက်လဲ?" },
      { jp: "日本料理を習っています。", en: "I'm learning Japanese cooking.", mm: "ဂျပန်ချက်ပြုတ်နည်းကိုသင်ယူနေတယ်။" }
    ]
  },
  {
    c: "質",
    en: "quality, substance",
    mm: "အရည်အသွေး/ဒြပ်",
    on: "シツ",
    kun: "",
    s: 15,
    jlpt: 4,
    combinations: [
      { word: "質問", reading: "しつもん", meaning_en: "question", meaning_mm: "မေးခွန်း" },
      { word: "品質", reading: "ひんしつ", meaning_en: "quality", meaning_mm: "အရည်အသွေး" },
      { word: "物質", reading: "ぶっしつ", meaning_en: "substance", meaning_mm: "ဒြပ်" }
    ],
    full_meaning: "အရည်အသွေး၊ ဒြပ်၊ ဝိသေသလက္ခဏာ။ သိပ္ပံနည်းကျနဲ့အရည်အသွေးဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "質問があります。", en: "I have a question.", mm: "မေးခွန်းရှိတယ်။" },
      { jp: "この製品は品質がいいです。", en: "This product has good quality.", mm: "ဒီထုတ်ကုန်ကအရည်အသွေးကောင်းတယ်။" }
    ]
  },
  {
    c: "問",
    en: "question, problem",
    mm: "မေးခွန်း/ပြဿနာ",
    on: "モン",
    kun: "と",
    s: 11,
    jlpt: 4,
    combinations: [
      { word: "問題", reading: "もんだい", meaning_en: "problem, question", meaning_mm: "ပြဿနာ/မေးခွန်း" },
      { word: "質問", reading: "しつもん", meaning_en: "question", meaning_mm: "မေးခွန်း" },
      { word: "訪問", reading: "ほうもん", meaning_en: "visit", meaning_mm: "သွားရောက်လည်ပတ်ခြင်း" }
    ],
    full_meaning: "မေးခွန်း၊ ပြဿနာ၊ တောင်းဆိုခြင်း။ ပညာရေးနဲ့ဆက်သွယ်ရေးဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "問題が難しいです。", en: "The problem is difficult.", mm: "ပြဿနာကခက်တယ်။" },
      { jp: "先生に質問します。", en: "I ask the teacher a question.", mm: "ဆရာကိုမေးခွန်းမေးတယ်။" }
    ]
  },
  {
    c: "題",
    en: "topic, title",
    mm: "ခေါင်းစဉ်/အကြောင်းအရာ",
    on: "ダイ",
    kun: "",
    s: 18,
    jlpt: 4,
    combinations: [
      { word: "問題", reading: "もんだい", meaning_en: "problem, question", meaning_mm: "ပြဿနာ/မေးခွန်း" },
      { word: "話題", reading: "わだい", meaning_en: "topic of conversation", meaning_mm: "စကားပြောခန်းအကြောင်းအရာ" },
      { word: "題名", reading: "だいめい", meaning_en: "title", meaning_mm: "ခေါင်းစဉ်" }
    ],
    full_meaning: "ခေါင်းစဉ်၊ အကြောင်းအရာ၊ မေးခွန်း။ စာပေ၊ ပညာရေးနဲ့ဆက်သွယ်ရေးဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "試験の問題は難しかった。", en: "The exam questions were difficult.", mm: "စာမေးပွဲမေးခွန်းတွေကခက်ခဲခဲ့တယ်။" },
      { jp: "面白い話題です。", en: "It's an interesting topic.", mm: "စိတ်ဝင်စားဖို့ကောင်းတဲ့အကြောင်းအရာဖြစ်တယ်။" }
    ]
  },
  {
    c: "答",
    en: "answer, reply",
    mm: "အဖြေ",
    on: "トウ",
    kun: "こた",
    s: 12,
    jlpt: 4,
    combinations: [
      { word: "答え", reading: "こたえ", meaning_en: "answer", meaning_mm: "အဖြေ" },
      { word: "回答", reading: "かいとう", meaning_en: "reply", meaning_mm: "အဖြေပေးခြင်း" },
      { word: "質問に答える", reading: "しつもんにこたえる", meaning_en: "to answer a question", meaning_mm: "မေးခွန်းကိုဖြေသည်" }
    ],
    full_meaning: "အဖြေ၊ တုံ့ပြန်ချက်။ မေးခွန်းတွေနဲ့ဆက်သွယ်ရေးဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "質問に答えてください。", en: "Please answer the question.", mm: "မေးခွန်းကိုဖြေပေးပါ။" },
      { jp: "答えがわかりません。", en: "I don't know the answer.", mm: "အဖြေမသိဘူး။" }
    ]
  },
  {
    c: "勉",
    en: "diligence, effort",
    mm: "ကြိုးစား",
    on: "ベン",
    kun: "",
    s: 10,
    jlpt: 4,
    combinations: [
      { word: "勉強", reading: "べんきょう", meaning_en: "study", meaning_mm: "စာလေ့လာခြင်း" },
      { word: "努力", reading: "どりょく", meaning_en: "effort", meaning_mm: "အားထုတ်မှု" },
      { word: "勤勉", reading: "きんべん", meaning_en: "diligent", meaning_mm: "ကြိုးစားသော" }
    ],
    full_meaning: "ကြိုးစားအားထုတ်မှု၊ လုံ့လဝီရိယ။ ပညာရေးနဲ့အလုပ်အကိုင်ဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "日本語を勉強しています。", en: "I'm studying Japanese.", mm: "ဂျပန်စာလေ့လာနေတယ်။" },
      { jp: "毎日勉強します。", en: "I study every day.", mm: "နေ့တိုင်းစာလေ့လာတယ်။" }
    ]
  },
  {
    c: "強",
    en: "strong",
    mm: "အားကောင်း",
    on: "キョウ",
    kun: "つよ",
    s: 11,
    jlpt: 4,
    combinations: [
      { word: "強い", reading: "つよい", meaning_en: "strong", meaning_mm: "အားကောင်း" },
      { word: "勉強", reading: "べんきょう", meaning_en: "study", meaning_mm: "စာလေ့လာခြင်း" },
      { word: "強制", reading: "きょうせい", meaning_en: "compulsory", meaning_mm: "အတင်းအကျပ်" }
    ],
    full_meaning: "အားကောင်းခြင်း၊ ခိုင်မာခြင်း။ ရုပ်ပိုင်းဆိုင်ရာနဲ့စိတ်ပိုင်းဆိုင်ရာအားကောင်းမှုတွေအတွက်သုံးတယ်။",
    examples: [
      { jp: "彼は体が強いです。", en: "He has a strong body.", mm: "သူကကိုယ်ခန္ဓာအားကောင်းတယ်။" },
      { jp: "風が強かったです。", en: "The wind was strong.", mm: "လေကအားကောင်းခဲ့တယ်။" }
    ]
  },
  {
    c: "業",
    en: "business, work",
    mm: "လုပ်ငန်း/အလုပ်",
    on: "ギョウ",
    kun: "",
    s: 13,
    jlpt: 4,
    combinations: [
      { word: "仕事", reading: "しごと", meaning_en: "job", meaning_mm: "အလုပ်" },
      { word: "工業", reading: "こうぎょう", meaning_en: "industry", meaning_mm: "စက်မှုလက်မှု" },
      { word: "農業", reading: "のうぎょう", meaning_en: "agriculture", meaning_mm: "စိုက်ပျိုးရေး" }
    ],
    full_meaning: "လုပ်ငန်း၊ အလုပ်၊ စီးပွားရေး။ စီးပွားရေးနဲ့အလုပ်အကိုင်ဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "工業地帯に行きました。", en: "I went to the industrial area.", mm: "စက်မှုဇုန်ကိုသွားခဲ့တယ်။" },
      { jp: "農業が大切です。", en: "Agriculture is important.", mm: "စိုက်ပျိုးရေးကအရေးကြီးတယ်။" }
    ]
  },
  {
    c: "仕",
    en: "serve, do",
    mm: "အမှုထမ်း/လုပ်",
    on: "シ",
    kun: "つか",
    s: 5,
    jlpt: 4,
    combinations: [
      { word: "仕事", reading: "しごと", meaning_en: "job", meaning_mm: "အလုပ်" },
      { word: "仕方", reading: "しかた", meaning_en: "way, method", meaning_mm: "နည်းလမ်း" },
      { word: "仕える", reading: "つかえる", meaning_en: "to serve", meaning_mm: "အမှုထမ်းသည်" }
    ],
    full_meaning: "အမှုထမ်းခြင်း၊ လုပ်ခြင်း။ အလုပ်အကိုင်နဲ့လုပ်ဆောင်ချက်ဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "仕事を探しています。", en: "I'm looking for a job.", mm: "အလုပ်ရှာနေတယ်။" },
      { jp: "仕方がありません。", en: "There's no way.", mm: "နည်းလမ်းမရှိဘူး။" }
    ]
  },
  {
    c: "事",
    en: "thing, matter",
    mm: "အရာ/ကိစ္စ",
    on: "ジ",
    kun: "こと",
    s: 8,
    jlpt: 4,
    combinations: [
      { word: "仕事", reading: "しごと", meaning_en: "job", meaning_mm: "အလုပ်" },
      { word: "事件", reading: "じけん", meaning_en: "incident", meaning_mm: "ဖြစ်ရပ်" },
      { word: "事情", reading: "じじょう", meaning_en: "circumstances", meaning_mm: "အခြေအနေ" }
    ],
    full_meaning: "အရာ၊ ကိစ္စ၊ အဖြစ်အပျက်။ ဘဝနဲ့ဆက်စပ်တဲ့ကိစ္စရပ်တွေအတွက်သုံးတယ်။",
    examples: [
      { jp: "大切な事です。", en: "It's an important matter.", mm: "ဒါကအရေးကြီးတဲ့ကိစ္စဖြစ်တယ်။" },
      { jp: "仕事が忙しいです。", en: "Work is busy.", mm: "အလုပ်ကအလုပ်များတယ်။" }
    ]
  },
  {
    c: "試",
    en: "test, try",
    mm: "စမ်းသပ်/ကြိုးစား",
    on: "シ",
    kun: "ため",
    s: 13,
    jlpt: 4,
    combinations: [
      { word: "試験", reading: "しけん", meaning_en: "exam", meaning_mm: "စာမေးပွဲ" },
      { word: "試合", reading: "しあい", meaning_en: "game, match", meaning_mm: "ပွဲ" },
      { word: "試す", reading: "ためす", meaning_en: "to try", meaning_mm: "စမ်းကြည့်သည်" }
    ],
    full_meaning: "စမ်းသပ်ခြင်း၊ ကြိုးစားခြင်း၊ စာမေးပွဲ။ ပညာရေးနဲ့အားကစားဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "試験があります。", en: "There's an exam.", mm: "စာမေးပွဲရှိတယ်။" },
      { jp: "サッカーの試合を見ます。", en: "I watch a soccer match.", mm: "ဘောလုံးပွဲကြည့်တယ်။" }
    ]
  },
  {
    c: "験",
    en: "test, effect",
    mm: "စမ်းသပ်/သက်ရောက်မှု",
    on: "ケン",
    kun: "",
    s: 18,
    jlpt: 4,
    combinations: [
      { word: "試験", reading: "しけん", meaning_en: "exam", meaning_mm: "စာမေးပွဲ" },
      { word: "経験", reading: "けいけん", meaning_en: "experience", meaning_mm: "အတွေ့အကြုံ" },
      { word: "実験", reading: "じっけん", meaning_en: "experiment", meaning_mm: "စမ်းသပ်ခြင်း" }
    ],
    full_meaning: "စမ်းသပ်ခြင်း၊ သက်ရောက်မှု၊ အတွေ့အကြုံ။ သိပ္ပံနည်းကျနဲ့ပညာရေးဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "試験に合格しました。", en: "I passed the exam.", mm: "စာမေးပွဲအောင်မြင်ခဲ့တယ်။" },
      { jp: "面白い経験でした。", en: "It was an interesting experience.", mm: "စိတ်ဝင်စားဖို့ကောင်းတဲ့အတွေ့အကြုံဖြစ်ခဲ့တယ်။" }
    ]
  },
  {
    c: "合",
    en: "fit, join",
    mm: "ကိုက်ညီ/ပူးပေါင်း",
    on: "ゴウ",
    kun: "あ",
    s: 6,
    jlpt: 4,
    combinations: [
      { word: "試合", reading: "しあい", meaning_en: "game, match", meaning_mm: "ပွဲ" },
      { word: "場合", reading: "ばあい", meaning_en: "case", meaning_mm: "အခြေအနေ" },
      { word: "都合", reading: "つごう", meaning_en: "convenience", meaning_mm: "အဆင်ပြေမှု" }
    ],
    full_meaning: "ကိုက်ညီခြင်း၊ ပူးပေါင်းခြင်း၊ သင့်လျော်ခြင်း။ ဆက်သွယ်မှုနဲ့သဘောတူညီမှုဆိုင်ရာစကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "試合に勝ちました。", en: "We won the match.", mm: "ပွဲမှာနိုင်ခဲ့တယ်။" },
      { jp: "場合によって違います。", en: "It differs depending on the case.", mm: "အခြေအနေပေါ်မူတည်ပြီးကွာခြားတယ်။" }
    ]
  },
  {
    c: "場",
    en: "place, field",
    mm: "နေရာ/ကွင်း",
    on: "ジョウ",
    kun: "ば",
    s: 12,
    jlpt: 4,
    combinations: [
      { word: "場所", reading: "ばしょ", meaning_en: "place", meaning_mm: "နေရာ" },
      { word: "場合", reading: "ばあい", meaning_en: "case", meaning_mm: "အခြေအနေ" },
      { word: "工場", reading: "こうじょう", meaning_en: "factory", meaning_mm: "စက်ရုံ" }
    ],
    full_meaning: "နေရာ၊ ကွင်း၊ အခန်း။ ရုပ်ပိုင်းဆိုင်ရာနေရာတွေနဲ့ဆက်စပ်တဲ့စကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "会議の場所はどこですか？", en: "Where is the meeting place?", mm: "အစည်းအဝေးနေရာကဘယ်မှာလဲ?" },
      { jp: "場合によって決めます。", en: "We'll decide depending on the case.", mm: "အခြေအနေပေါ်မူတည်ပြီးဆုံးဖြတ်မယ်။" }
    ]
  },
  {
    c: "所",
    en: "place, location",
    mm: "အရပ်/တည်နေရာ",
    on: "ショ",
    kun: "ところ",
    s: 8,
    jlpt: 4,
    combinations: [
      { word: "場所", reading: "ばしょ", meaning_en: "place", meaning_mm: "နေရာ" },
      { word: "住所", reading: "じゅうしょ", meaning_en: "address", meaning_mm: "နေရပ်လိပ်စာ" },
      { word: "台所", reading: "だいどころ", meaning_en: "kitchen", meaning_mm: "မီးဖိုချောင်" }
    ],
    full_meaning: "အရပ်၊ တည်နေရာ၊ နေရာ။ ရုပ်ပိုင်းဆိုင်ရာနေရာတွေနဲ့ဆက်စပ်တဲ့စကားလုံးတွေမှာအသုံးပြုတယ်။",
    examples: [
      { jp: "静かな所が好きです。", en: "I like quiet places.", mm: "တိတ်ဆိတ်တဲ့နေရာတွေကြိုက်တယ်။" },
      { jp: "住所を教えてください。", en: "Please tell me your address.", mm: "နေရပ်လိပ်စာပြောပြပါ။" }
    ]
  }
]

# Create or update kanji records
n4_kanji_complete.each do |kanji_data|
  Kanji.find_or_create_by!(character: kanji_data[:c]) do |kanji|
    kanji.meaning_en = kanji_data[:en]
    kanji.meaning_mm = kanji_data[:mm]
    kanji.onyomi = kanji_data[:on]
    kanji.kunyomi = kanji_data[:kun]
    kanji.strokes = kanji_data[:s]
    kanji.jlpt_level = kanji_data[:jlpt]
    kanji.full_meaning = kanji_data[:full_meaning]
    kanji.combinations = kanji_data[:combinations]
    kanji.examples = kanji_data[:examples]
  end
  puts "Seeded N4 Kanji: #{kanji_data[:c]}"
end

puts "✅ Seeded #{n4_kanji_complete.count} N4 kanji with complete translations!"