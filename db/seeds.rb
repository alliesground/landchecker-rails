# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless Lga.any?
  Lga.copy_from "#{Rails.root.join('sample_data/lgas.csv')}", columns: [:code, :name, :long_name, :created_at, :updated_at] do |row|
    row[3] = Time.now
    row[4] = Time.now
  end
end

unless Property.any?
  Property.copy_from "#{Rails.root.join('sample_data/properties.csv')}", columns: [:id, :lga_code, :council_property_number, :longitude, :latitude, :created_at, :updated_at] do |row|
    row[5] = Time.now
    row[6] = Time.now
  end
end

unless Address.any?
  Address.copy_from "#{Rails.root.join('sample_data/addresses.csv')}", columns: [:feature_id, :property_id, :full_address, :lga_code, :state, :postcode, :created_at, :updated_at] do |row|
    row[6] = Time.now
    row[7] = Time.now
  end
end
