class CreateMotos < ActiveRecord::Migration[6.1]
  def change
    create_table :motos do |t|
      t.string :model
      t.string :brand
      t.string :cylinder
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
