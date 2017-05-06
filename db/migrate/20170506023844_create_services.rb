class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.integer :place_id
      t.time :start_time
      t.time :end_time
      t.boolean :is_book_sold

      t.timestamps
    end
  end
end
