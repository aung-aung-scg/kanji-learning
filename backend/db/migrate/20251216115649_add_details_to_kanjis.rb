class AddDetailsToKanjis < ActiveRecord::Migration[8.1]
  def change
    add_column :kanjis, :full_meaning_en, :text
    add_column :kanjis, :full_meaning_mm, :text
    add_column :kanjis, :examples, :jsonb
    add_column :kanjis, :combinations, :jsonb
    add_column :kanjis, :unicode, :string
  end
end
