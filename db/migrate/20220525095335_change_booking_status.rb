class ChangeBookingStatus < ActiveRecord::Migration[6.1]
  def up
    change_table :bookings do |t|
      t.change :status, :string, default: "En attente"
    end
  end
end
