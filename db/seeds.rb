# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def create_calendar(city, timezone)
  title = "#{city}.js Meetups"
  calendar = Calendar.create!(title: title, timezone: timezone)
  calendar.events.create!(title: "Attend #{city}.js meeting", start: "2014-06-05 18:00:00", end: "2014-06-05 19:00:00")
  calendar.events.create!(title: "Go to dinner", start: "2014-06-05 19:30:00", end: "2014-06-05 20:30:00")
end

Calendar.destroy_all
create_calendar('NY','America/New_York')
create_calendar('Chicago','America/Chicago')
create_calendar('SLC','America/Denver')
