class CreateCityZipMsas < ActiveRecord::Migration
  def self.up
    create_table :city_zip_msas do |t|
      t.string :city
      t.string :state
      t.string :zip
      t.integer :area_code
      t.string :county
      t.string :time_zone
      t.boolean :dst
      t.integer :msa
      t.integer :pmsa

      t.timestamps
    end
  end

  def self.down
    drop_table :city_zip_msas
  end
end
