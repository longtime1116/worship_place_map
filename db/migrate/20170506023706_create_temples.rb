class CreateTemples < ActiveRecord::Migration[5.0]
  def change
    create_table :temples do |t|
      t.integer :place_id
      t.string :sect
      t.string :rank
      t.string :object

      t.timestamps
    end
  end
end
