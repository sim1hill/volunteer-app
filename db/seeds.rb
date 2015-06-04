# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Project.create(name: "124th Street Community Garden", description: "The 124th Street Community Garden is replacing compost bins lost last year when part of their garden was purchased by a developer. They are building a rat-proof compost bin to accept scraps from garden members and neighbors.", neighborhood: "Harlem")
Project.create(name: 'ACORN (Associated Cyclists Committed to Organizing a Recycling Network)', description: "ACORN (Associated Cyclists Committed to Organizing A Recycling Network) is organizing a volunteer-based compost pick-up program. Bikers will pick up compost from residents and drop it off at various community gardens in North Brooklyn, making composting accessible to those who may live far from a drop off site.", neighborhood: "Greenpoint")
Project.create(name: 'Compost Convoy', description: "Compost Convoy is expanding their bike pick up of compost scraps from various neighborhoods, which they drop off at Bushwick Farm. Volunteers work the farm, stir the compost, and are building an additional three-bin compost system to increase their capacity for composting.", neighborhood: "Bushwick")
Project.create(name: "Bushwick School for Music", description: "Bushwick School for Music is holding tuition-free after school music classes for youth who have little access to arts or cultural programming in their neighborhood. Participants will choose an instrument they want to learn and spend the semer learning to read, write, and play music. The semer will culminate in a community music performance.", neighborhood: "Bushwick")
Project.create(name: "LUNGS (Loisaida United Neighborhood Gardens)", description: "LUNGS (Loisaida United Neighborhood Gardens) is sponsoring a local fival that will include, among many other events and activities, a series of environmental workshops open to the entire community. In the past this fival has attracted hundreds of residents and community members.", neighborhood: "East Village")
Project.create(name: "Slow Food NYC", description: "Slow Food NYC is launching composting at a new community garden to encourage and increase composting in the neighborhood. The garden members will ensure that the compost site is open to the public and do basic compost education to the community.", neighborhood: "Brownsville")
Event.create(name: "Planting Day", description: "Come spend the day planting vegetables and flowers!", start_date: 'Wed Jun 3 9:00:00.00 2015', end_date: 'Wed Jun 3 17:00:00.00 2015', address: "123 124th Street, Harlem", project_id: 1)
Event.create(name: "Build An Arbor", description: "Come spend the day building an arbor", start_date: 'Wed Jun 3 12:00:00.00 2015', end_date: 'Wed Jun 3 17:00:00.00 2015', address: "123 124th Street, Harlem", project_id: 1)
Event.create(name: "Collecting Bottles and Cans On Bike", description: "Come sort through recyclables while we ride", start_date: 'Wed Jun 3 12:00:00.00 2015', end_date: 'Wed Jun 3 17:00:00.00 2015', address: "555 Main Street, Brooklyn", project_id: 2)
Event.create(name: "Taking Out the Trash At High Speeds", description: "Riding and recycling -- hard!", start_date: 'Wed Jun 3 16:00:00.00 2015', end_date: 'Wed Jun 3 20:00:00.00 2015', address: "555 Main Street, Brooklyn", project_id: 2)
Event.create(name: "Putting Food Scraps to Good Use", description: "Sorting really awesome compost", start_date: 'Wed Jun 3 16:00:00.00 2015', end_date: 'Wed Jun 3 20:00:00.00 2015', address: "555 Flatiron Road, Brooklyn", project_id: 3)
Event.create(name: "Harving Pumpkins", description: "Picking pumpkins just in time for Halloween", start_date: 'Wed Jun 3 16:00:00.00 2015', end_date: 'Wed Jun 3 20:00:00.00 2015', address: "107 Avenue C, Manhattan", project_id: 5)
Event.create(name: "Taking Our Time Eating", description: "Eat slowly with us", start_date: 'Wed Jun 3 1:00:00.00 2015', end_date: 'Wed Jun 3 23:00:00.00 2015', address: "23535 Brown Street, Brooklyn", project_id: 6)
User.create!(name: 'Simone', email: "s@s.com", location: 'East Village', bio: 'Im really cool', password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Adam', email: "a@a.com", location: 'Framingham', bio: 'Also really cool', password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Josh', email: "j@j.com", location: 'Newark', bio: 'No, also really cool too', password: '00000000', password_confirmation: '00000000')
Topic.create(name: 'Arts & Culture')
Topic.create(name: 'Beautification')
Topic.create(name: 'Environment')
Topic.create(name: 'Food & Health')
Topic.create(name: 'Physical Fitness')
Topic.create(name: 'Public Safety')
Topic.create(name: 'Youth & Schools')
Skill.create(name: 'Drums')
Skill.create(name: 'PHP')
Skill.create(name: 'Dropdown Menus')
Skill.create(name: 'Manual Labor')
Skill.create(name: 'Building a Water Frame')
Event.all.first.skills  << Skill.all.first
Event.all.first.skills  << Skill.all.second
Event.all.first.skills  << Skill.all.third
Event.all.second.skills  << Skill.all.first
Event.all.third.skills  << Skill.all.fourth
Event.all.third.skills  << Skill.all.first
Event.all.fourth.skills  << Skill.all.first
Event.all.fourth.skills  << Skill.all.second
Event.all.fifth.skills  << Skill.all.first
User.all.first.skills  << Skill.all.first
User.all.first.skills  << Skill.all.second
User.all.first.skills  << Skill.all.third
User.all.second.skills  << Skill.all.first
User.all.third.skills  << Skill.all.fourth
User.all.third.skills  << Skill.all.first
Project.all.first.update(topic_id:1)
Project.all.second.update(topic_id:2)
Project.all.third.update(topic_id:3)
Project.all.fourth.update(topic_id:4) 
Project.all.fifth.update(topic_id:5)
User.all.first.topics << Topic.all.first
User.all.first.topics << Topic.all.second
User.all.second.topics << Topic.all.third
User.all.second.topics << Topic.all.second
User.all.third.topics << Topic.all.first
User.all.third.topics << Topic.all.fourth

