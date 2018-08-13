class CreateWineMarts < ActiveRecord::Migration[5.0]
  def change
    create_table :wine_marts do |t|
      t.string :name
      t.string :category
      t.string :industry

      t.timestamps
    end
  end
end
