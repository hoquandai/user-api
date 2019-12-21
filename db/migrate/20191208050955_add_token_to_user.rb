# frozen_string_literal: true

# :nodoc
class AddTokenToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :token, :string
  end
end