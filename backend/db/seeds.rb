# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
Kanji.create!([
  {
    character: "日",
    meaning_en: "day, sun",
    meaning_mm: "နေ့၊ နေ",
    jlpt_level: 5
  },
  {
    character: "人",
    meaning_en: "person",
    meaning_mm: "လူ",
    jlpt_level: 5
  }
])
