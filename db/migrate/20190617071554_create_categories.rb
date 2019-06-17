class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string  :produces,      null: false
      t.string  :model,         null: false
      t.integer :year,          null: false
      t.integer :average_price, null: false
      t.text    :notes,         :default => '...'
      t.string  :equipment,     :default => '...'
      t.timestamps
    end
  end
end
