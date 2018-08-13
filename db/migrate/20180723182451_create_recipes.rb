class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
