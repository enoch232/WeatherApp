class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :temperature
      t.string :condition
      t.string :state
      t.string :city

      t.timestamps null: false
    end
  end
end
