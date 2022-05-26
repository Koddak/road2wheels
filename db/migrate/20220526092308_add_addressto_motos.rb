class AddAddresstoMotos < ActiveRecord::Migration[6.1]
  def change
    add_column :motos, :address, :string
  end
end
