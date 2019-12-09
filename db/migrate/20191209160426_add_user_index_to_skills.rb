class AddUserIndexToSkills < ActiveRecord::Migration[6.0]
  def change
    add_reference :skills, :user, index: true
  end
end
