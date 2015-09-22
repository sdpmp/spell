class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :name
      t.string :status
      t.string :category
      t.references :price, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
