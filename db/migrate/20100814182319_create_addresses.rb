class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :street
      t.string :street2
      t.integer :city_zip_id
      t.integer :zip_plus

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
