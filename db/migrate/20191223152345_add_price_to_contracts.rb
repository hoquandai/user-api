class AddPriceToContracts < ActiveRecord::Migration[6.0]
  def change
    add_column :contracts, :price, :integer
    add_column :contracts, :complaint, :text
  end
end
