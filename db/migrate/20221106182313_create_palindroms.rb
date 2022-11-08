# frozen_string_literal: true

# For migration
class CreatePalindroms < ActiveRecord::Migration[7.0]
  def change
    create_table :palindroms do |t|
      t.integer :num

      t.timestamps
    end
  end
end
