class AddUserToContract < ActiveRecord::Migration[6.0]
  def change
    add_column :contracts, :tutor_id, :integer
    add_column :contracts, :student_id, :integer
  end
end
