class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.string :author
      t.string :body
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
