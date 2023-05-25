class CreateBenefits < ActiveRecord::Migration[7.0]
  def change
    create_table :benefits do |t|
      t.string :tier_name
      t.integer :required_points
      t.string :reward

      t.timestamps
    end
  end
end
