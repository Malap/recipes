class CreateColleages < ActiveRecord::Migration[5.0]
  def change
    create_table :colleages do |t|
      t.string :name
      t.string :city
      t.string :address
      t.string :phonenumber

      t.timestamps
    end
  end
end
