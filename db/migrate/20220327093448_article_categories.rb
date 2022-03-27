class ArticleCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :articale_categories do |t|
      t.integer :articale_id
      t.integer :category_id
    end
  end
end
