class AddImgSrcToLocation < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :img_src, :string
  end
end
