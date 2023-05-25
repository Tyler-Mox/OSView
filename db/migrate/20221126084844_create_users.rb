class CreateUsers < ActiveRecord::Migration[7.0]
    def change
      create_table :users do |t|
        t.string :FirstName
        t.string :LastName
        t.string :Email
        t.string :Phone
        t.string :Username
        t.integer :Benefits
        t.timestamps
      end
    end
  end