class ChangeClassInContract < ActiveRecord::Migration[6.0]
  def change
    rename_column :contracts, :class, :course
  end
end
