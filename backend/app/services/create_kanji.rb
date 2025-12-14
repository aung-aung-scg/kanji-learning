# app/services/create_kanji.rb
class CreateKanji
  def self.call
    return if Kanji.exists?

    Kanji.create!([
      {
        character: "日",
        jlpt_level: 5,
        meaning_en: "sun",
        meaning_mm: "နေ"
      },
      {
        character: "月",
        jlpt_level: 5,
        meaning_en: "moon",
        meaning_mm: "လ"
      }
    ])
  end
end
