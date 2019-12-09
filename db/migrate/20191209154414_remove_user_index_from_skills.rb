class RemoveUserIndexFromSkills < ActiveRecord::Migration[6.0]
  def change
    remove_index :skills, :user_id
  end
end
