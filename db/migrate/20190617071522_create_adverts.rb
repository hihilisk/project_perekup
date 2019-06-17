class CreateAdverts < ActiveRecord::Migration[5.2]
  def change
    create_table :adverts do |t|
        t.integer   :year,        null: false
        t.string    :seller,      null: false
        t.integer   :phone,       null: false
        t.string    :url,         null: false
        t.integer   :price,       null: false
        t.string    :vin ,        :default => '...'
        t.string    :city,        null: false
        t.text      :notes,       :default => '...'
        t.string    :equipment,   :default => '...'
        t.integer   :category_id, null: false
        t.string    :owners,      null: false
        t.timestamps
    end
  end
end
