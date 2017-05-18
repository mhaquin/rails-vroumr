class AddCoordinatesToVehicles < ActiveRecord::Migration[5.0]
  def change
    add_column :vehicles, :address, :string
    add_column :vehicles, :latitude, :float
    add_column :vehicles, :longitude, :float
  end
end
