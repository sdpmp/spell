class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :name
      t.string :status
      t.decimal :monthly, precision: 5, scale: 2
      t.decimal :yearly, precision: 5, scale: 2

      t.timestamps null: false
    end
  end
end
