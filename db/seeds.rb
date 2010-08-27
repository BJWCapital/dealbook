# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
puts "starting seeder"

require 'open-uri'
# Populate City, State, Zip, MSA table
# zips_splits[4] is the FIPS code which is not needed
CityZipMSA.delete_all
f = File.open("#{RAILS_ROOT}/db/seedData/Z5MSA.TXT", "r")
f.readlines.each do |zips|
    zips_split = zips.split(",")
    CityZipMSA.create!(
      :city => zips_split[0],
      :state => zips_split[1],
      :zip => zips_split[2],
      :area_code => zips_split[3],
      :county => zips_split[5],
      :time_zone => zips_split[6],
      :dst => zips_split[7],
      :msa => zips_split[8],
      :pmsa => zips_split[9]
      )
end
puts "end zips"

# Populate CMSA, PMSA, MSA table
MSAPMSACMSA.delete_all
f = File.open("#{RAILS_ROOT}/db/seedData/MSAPMSA.CSV", "r")
  f.readlines.each do |msa|
    msa_splits = msa.split(",")
    msa_pmsa, type, cmsa, level, state, city = msa.chomp.split(",")
    MSAPMSACMSA.create!(
      :msa_pmsa => msa_splits[0],
      :type => msa_splits[1],
      :cmsa => msa_splits[2],
      :level => msa_splits[3],
      :state => msa_splits[4],
      :city => msa_splits[5]
      )
end

puts "end cmsa pmsa msa"

# Populate Status Table
Status.delete_all
statuses = Status.create([{ :name => 'Prospect' }, { :name => 'Pre-Qualification' },
  { :name => 'Deal Structure' }, { :name => 'Ice' }, { :name => 'No Go' },
  { :name => 'Sponsor Search' }, { :name => 'Due Dilligence' }, { :name => 'Closed' },
  { :name => 'Sold' }])

# Populate Property Type Table
PropertyType.delete_all
property_types = PropertyType.create([{ :name => 'Multifamily' }, { :name => 'Office' },
  { :name => 'Retail' }, { :name => 'Mixed Use' }])

