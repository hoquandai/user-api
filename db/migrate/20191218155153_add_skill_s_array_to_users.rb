class AddSkillSArrayToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :skills, :integer, array: true, default: [] 
  end
end
