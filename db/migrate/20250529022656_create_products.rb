class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :ingredients
      t.text :body
      t.integer :category

      t.timestamps
    end
  end
end
