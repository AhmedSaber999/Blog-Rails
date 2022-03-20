class AddUserIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articales, :user_id, :integer
  end
end
