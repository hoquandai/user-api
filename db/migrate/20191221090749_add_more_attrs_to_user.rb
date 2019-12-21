class AddMoreAttrsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :price, :integer
    add_column :users, :desc, :text
  end
end
