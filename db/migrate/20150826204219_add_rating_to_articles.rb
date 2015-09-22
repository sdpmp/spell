class AddRatingToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :rating, :string
  end
end
