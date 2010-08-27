class CreatePropertyTypes < ActiveRecord::Migration
  def self.up
    create_table :property_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :property_types
  end
end
