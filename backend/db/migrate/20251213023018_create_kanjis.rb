class CreateKanjis < ActiveRecord::Migration[8.1]
  def change
    create_table :kanjis do |t|
      t.string :character
      t.string :meaning_en
      t.string :meaning_mm
      t.string :onyomi
      t.string :kunyomi
      t.integer :strokes
      t.string :jlpt_level

      t.timestamps
    end
  end
end
