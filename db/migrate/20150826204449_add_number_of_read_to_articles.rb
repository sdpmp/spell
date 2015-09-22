class AddNumberOfReadToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :number_of_read, :string
  end
end
