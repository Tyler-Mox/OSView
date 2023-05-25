class AddTypeZonePhoneToLocations < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :type, :string
    add_column :locations, :on_campus, :boolean
    add_column :locations, :phone, :string
  end
end
