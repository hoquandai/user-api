class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.datetime :dob
      t.string :gender
      t.string :phone
      t.string :city

      t.timestamps
    end
  end
end
