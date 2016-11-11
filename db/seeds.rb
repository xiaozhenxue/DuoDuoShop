# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'
CSV.foreach(Rails.root.join("db/seeds_data/items.csv"), headers: true) do |row|
  Item.create(:title => row[0], :category => row[1], :price => row[2], :description => row[3], :id => row[4], :poster_url => row[5])
end