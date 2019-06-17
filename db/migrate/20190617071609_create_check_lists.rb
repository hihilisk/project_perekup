class CreateCheckLists < ActiveRecord::Migration[5.2]
  def change
    create_table :check_lists do |t|
      t.string    :spending,    :default => '...'
      t.string    :condicion,   :default => '...'
      t.string    :service,     :default => '...'
      t.string    :painted,     :default => '...'
      t.string    :body_repair, :default => '...'
      t.integer   :price,       :default => '...'
      t.text      :notes,       :default => '...'
      t.timestamps
    end
  end
end
