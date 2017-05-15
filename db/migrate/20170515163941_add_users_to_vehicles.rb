class AddUsersToVehicles < ActiveRecord::Migration[5.0]
  def change
    add_reference :vehicles, :user, foreign_key: true
  end
end
