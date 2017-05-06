class CreateWorshipPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :worship_places do |t|
      t.integer :place_id
      t.string :name
      t.string :official_name
      t.boolean :is_temple
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
