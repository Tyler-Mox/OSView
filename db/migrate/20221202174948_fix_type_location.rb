class FixTypeLocation < ActiveRecord::Migration[7.0]
  def change
    rename_column :locations, :type, :type_of
  end
end
