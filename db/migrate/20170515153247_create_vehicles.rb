class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.float :price
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
