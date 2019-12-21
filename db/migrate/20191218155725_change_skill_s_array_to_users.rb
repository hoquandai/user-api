class ChangeSkillSArrayToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :skills, :string
  end
end
