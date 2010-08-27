class CreateMsaPmsaCmsas < ActiveRecord::Migration
  def self.up
    create_table :msapmsacmsas do |t|
      t.integer :msa_pmsa
      t.string :type
      t.integer :cmsa
      t.string :level
      t.string :state
      t.string :city

      t.timestamps
    end
  end

  def self.down
    drop_table :msapmsacmsas
  end
end
