class ChangeSkillSUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :skills, :string, array: true, default: [], using: "(string_to_array(skills, ','))"
  end
end
