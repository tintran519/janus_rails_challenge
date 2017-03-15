# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

leads = Lead.create([
    {name: 'Fake City', address: '123 Fake St.', phone: '1112223333', latitude: '123456', longitude: '654321'}
  ])
