class CreateShrines < ActiveRecord::Migration[5.0]
  def change
    create_table :shrines do |t|
      t.integer :place_id
      t.string :rank
      t.string :object

      t.timestamps
    end
  end
end
