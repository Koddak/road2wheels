class AddCoordinatesToMotos < ActiveRecord::Migration[6.1]
  def change
    add_column :motos, :latitude, :float
    add_column :motos, :longitude, :float
  end
end
