class CreateLocations < ActiveRecord::Migration[8.0]
  def change
    create_table :locations do |t|
      t.string :title
      t.string :place_id

      t.timestamps
    end
  end
end
