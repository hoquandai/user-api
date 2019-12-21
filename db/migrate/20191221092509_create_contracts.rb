class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.string :class
      t.string :subject
      t.string :addr
      t.string :schedule
      t.string :time
      t.string :status
      t.boolean :paid

      t.timestamps
    end
  end
end
