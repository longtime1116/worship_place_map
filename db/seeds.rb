# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

WorshipPlace.create(:place_id => 1, :name => '日枝神社', :is_temple => false, :address => '東京都千代田区永田町2丁目10番5号', :latitude => 35.674722, :longitude => 139.739583)
WorshipPlace.create(:place_id => 2, :name => '浅草寺', :is_temple => true, :address => '東京都台東区浅草2丁目3番1号', :latitude => 35.714722, :longitude => 139.79675)
