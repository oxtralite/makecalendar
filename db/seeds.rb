# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Calendar.create!(title: 'NY.js Meetups', timezone: 'America/New_York') unless Calendar.where(title: 'NY.js Meetups').present?
Calendar.create!(title: 'Chicago.js Meetups', timezone: 'America/Chicago') unless Calendar.where(title: 'Chicago.js Meetups').present?
calendar = Calendar.where(title: 'Personal').present?
unless calendar.present?
  calendar = Calendar.create!(title: 'Personal', timezone: 'America/Denver')
  calendar.events.create!(title: 'Attend Logan.js meeting', start: "2014-06-05 19:09:47", end: "2014-06-05 20:09:47")
  calendar.events.create!(title: 'Prepare my Utah.js talk', start: "2014-06-05 20:09:47", end: "2014-06-05 21:09:47")
end