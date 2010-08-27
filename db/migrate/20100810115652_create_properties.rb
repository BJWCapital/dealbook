class CreateProperties < ActiveRecord::Migration
  def self.up
    create_table :properties do |t|
      t.string :name
      t.integer :ask_price
      t.integer :current_noi
      t.integer :pro_forma_noi
      t.integer :occupancy
      t.integer :class
      t.text :description
      t.string :opportunity
      t.integer :address_id
      t.integer :status_id
      t.string :source

      t.timestamps
    end
  end

  def self.down
    drop_table :properties
  end
end
