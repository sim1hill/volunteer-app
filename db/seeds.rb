User.create!(name: 'Simone', email: "s@example.com", location: 'East Village', bio: "I am a web developer for Volunteerly, and also an active volunteer.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Adam', email: "a@example.com", location: 'Framingham', bio: "I am a web developer for Volunteerly, and also an active volunteer.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Josh', email: "j@example.com", location: 'Newark', bio: "I am a web developer for Volunteerly, and also an active volunteer.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Amanda', email: "a2@example.com", location: 'Brooklyn', bio: "I am a PM for Volunteerly, and also an active volunteer.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Joshua', email: "j2@example.com", location: 'Brooklyn', bio: "I am an advisor to team Volunteerly, and also an active volunteer.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Steven', email: "s2@example.com", location: 'Bronx', bio: "I am a passionate t-shirt enthusiast, and enjoy teaching technology.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Kenny', email: "k@example.com", location: 'NYC', bio: "I love photography and I have an enormous collection of cool stickers", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Waruna', email: "w@example.com", location: 'Staten Island', bio: "I'm originally from Sri-Lanka but I've been living in Staten Island since I was 12", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Tim', email: "t@example.com", location: 'NYC', bio: "I ENJOY LONG WALKS ON THE BEACH, SUNSETS, AND RAINBOWS.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Cassidy', email: "c@example.com", location: 'Canada', bio: "Regardless of whether a project works out or not I always learn something new and always meet someone interesting.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Dace', email: "d@example.com", location: 'NYC', bio: "I love to build things.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Jonathan', email: "d2@example.com", location: 'NYC', bio: "NYC Born and based web developer, musician and tech enthusiast.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Blythe', email: "b@example.com", location: 'NYC', bio: "Came out East to code and write.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Chad', email: "c2@example.com", location: 'NYC', bio: "TINKERER. DAD. TROUBLEMAKER", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Dana', email: "d3@example.com", location: 'NYC', bio: "Erm. Hello!", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Evan', email: "e@example.com", location: 'NYC', bio: "I enjoy playing music, sports, video games, and long walks on the beach.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Fin', email: "f@example.com", location: 'NYC', bio: "I wear a lot of v-neck sweaters. I take myself very seriously.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Franco', email: "f2@example.com", location: 'NYC', bio: "I dislike food.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Hannah', email: "h@example.com", location: 'Philly', bio: "I like growing food, biking around the city, camping and cooking.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Ian', email: "i@example.com", location: 'Brooklyn', bio: "I was born and raised in New Jersey.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Jahde', email: "j3@example.com", location: 'NYC', bio: "Young Jedi in training from the island of Bermuda.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'John', email: "j4@example.com", location: 'NYC', bio: "I enjoy coffee.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Jon', email: "j5@example.com", location: 'NYC', bio: "I like sleeping.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Julian', email: "j6@example.com", location: 'NYC', bio: "Always exploring.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Lucy', email: "l@example.com", location: 'NYC', bio: "I was born and raised in Mexico, where I graduated as an Architect.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Parker', email: "p@example.com", location: 'NYC', bio: "Hey, I’m Parker. I really like sports.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Seph', email: "s3@example.com", location: 'NYC', bio: "Adjusting from a burrito-based to a pizza-based diet.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Stefania', email: "s4@example.com", location: 'NYC', bio: "TV production artist turned web developer.", password: '00000000', password_confirmation: '00000000')
User.create!(name: 'Summer', email: "s5@example.com", location: 'NYC', bio: "amateur cook, expert eater, cat lover", password: '00000000', password_confirmation: '00000000')

Topic.create(name: 'Arts & Culture') #1
Topic.create(name: 'Beautification') #2
Topic.create(name: 'Environment') #3
Topic.create(name: 'Food & Health') #4
Topic.create(name: 'Physical Fitness') #5
Topic.create(name: 'Public Safety') #6
Topic.create(name: 'Youth & Schools') #7

User.find(1).topics << Topic.find(1)
User.find(1).topics << Topic.find(2)
User.find(2).topics << Topic.find(2)
User.find(2).topics << Topic.find(3)
User.find(3).topics << Topic.find(3)
User.find(3).topics << Topic.find(4)
User.find(4).topics << Topic.find(4)
User.find(5).topics << Topic.find(5)
User.find(6).topics << Topic.find(6)
User.find(7).topics << Topic.find(7)
User.find(8).topics << Topic.find(1)
User.find(9).topics << Topic.find(2)
User.find(10).topics << Topic.find(3)

Skill.create(name: 'Manual Labor') #1
Skill.create(name: 'Technology') #2
Skill.create(name: 'Music & Art') #3
Skill.create(name: 'Office & Administrative') #4
Skill.create(name: 'Youth Education') #5
Skill.create(name: 'Adult Education') #6
Skill.create(name: 'Carpentry & Construction') #7

SkillsUser.create(user_id: 1, skill_id: 1, skill_description:"I'm super strong, and can carry any object of any weight")
SkillsUser.create(user_id: 1, skill_id: 2, skill_description:"I'm a professional web developer, and can also help with general tech issues")
SkillsUser.create(user_id: 2, skill_id: 3, skill_description:"I can teach music at any level, beginner to advanced")
SkillsUser.create(user_id: 2, skill_id: 4, skill_description:"I can offer guidance for admin operations, office workflow, etc")
SkillsUser.create(user_id: 3, skill_id: 5, skill_description:"I taught in the public school system for many years")
SkillsUser.create(user_id: 3, skill_id: 6, skill_description:"I have a lot of experience in adult education")
SkillsUser.create(user_id: 4, skill_id: 7, skill_description:"I am a beginner level carptenter, but happy to help and learn more")
SkillsUser.create(user_id: 5, skill_id: 1, skill_description:"I am not very strong, but happy to help with manual labor")
SkillsUser.create(user_id: 6, skill_id: 2, skill_description:"I can help with any projects that need an Elixir backend")
SkillsUser.create(user_id: 7, skill_id: 3, skill_description:"music - intermediate, photography - expert, painting - beginner")
SkillsUser.create(user_id: 8, skill_id: 4, skill_description:"photocopying - advanced")
SkillsUser.create(user_id: 9, skill_id: 5, skill_description:"teaching english - advanced, teaching math - intermediate")
SkillsUser.create(user_id: 10, skill_id: 6, skill_description:"teaching english - advanced, teaching math - intermediate")
SkillsUser.create(user_id: 11, skill_id: 7, skill_description:"hammering - beginner, measuring - intermediate, sawing - expert")

Project.create(user_id: 1, topic_id:3, name: "124th Street Community Garden", description: "The 124th Street Community Garden is replacing compost bins lost last year when part of their garden was purchased by a developer. They are building a rat-proof compost bin to accept scraps from garden members and neighbors.", neighborhood: "Harlem")
  #Past Event
  Event.create(project_id: 1, name: "Planting Day", description: "Come spend the day planting vegetables and flowers!", start_date: 'Wed Jun 3 9:00:00.00 2015', end_date: 'Wed Jun 3 17:00:00.00 2015', address: "123 124th Street, NYC")
    Event.find(1).skills << Skill.find(1)
  #Future Event
  Event.create(project_id: 1, name: "Planting Day", description: "Come spend the day planting vegetables and flowers!", start_date: 'Wed Jul 3 9:00:00.00 2015', end_date: 'Wed Jul 3 17:00:00.00 2015', address: "123 124th Street, NYC")
    Event.find(2).skills << Skill.find(1)
Project.create(user_id: 3, topic_id:3, name: 'ACORN (Associated Cyclists Committed to Organizing a Recycling Network)', description: "ACORN (Associated Cyclists Committed to Organizing A Recycling Network) is organizing a volunteer-based compost pick-up program. Bikers will pick up compost from residents and drop it off at various community gardens in North Brooklyn, making composting accessible to those who may live far from a drop off site.", neighborhood: "Greenpoint")
  #Past Event
  Event.create(project_id: 2, name: "Collecting Bottles and Cans On Bike", description: "Come sort through recyclables while we ride", start_date: 'Wed Jun 3 12:00:00.00 2015', end_date: 'Wed Jun 3 17:00:00.00 2015', address: "200 Eastern Pkwy
Brooklyn, NY 11238
")
    Event.find(3).skills << Skill.find(1)
  #Future Event
  Event.create(project_id: 2, name: "Collecting Bottles and Cans On Bike", description: "Come sort through recyclables while we ride", start_date: 'Wed Aug 3 12:00:00.00 2015', end_date: 'Wed Aug 3 17:00:00.00 2015', address: "200 Eastern Pkwy
Brooklyn, NY 11238
")
    Event.find(4).skills << Skill.find(1)

#Each event makes a call to Google's geocode API. Sleep(1) is used to avoid their 5 call per second limit.
sleep(1)


Project.create(user_id: 4, topic_id:3, name: 'Compost Convoy', description: "Compost Convoy is expanding their bike pick up of compost scraps from various neighborhoods, which they drop off at Bushwick Farm. Volunteers work the farm, stir the compost, and are building an additional three-bin compost system to increase their capacity for composting.", neighborhood: "Bushwick")
  #Future Event
  Event.create(project_id: 3, name: 'Picking up compost scraps', description: "Help us pick up and drop off compost scraps.", start_date: 'Wed Jun 17 10:00:00.00 2015', end_date: 'Wed Jun 17 12:00:00.00 2015', address: "817 Flushing Ave
Brooklyn, NY 11206" )
    Event.find(5).skills << Skill.find(1)
  Event.create(project_id: 3, name: 'Picking up compost scraps', description: "Help us pick up and drop off compost scraps.", start_date: 'Wed Jun 24 10:00:00.00 2015', end_date: 'Wed Jun 24 12:00:00.00 2015', address: "817 Flushing Ave
Brooklyn, NY 11206" )
    Event.find(6).skills << Skill.find(1)
  Event.create(project_id: 3, name: 'Picking up compost scraps', description: "Help us pick up and drop off compost scraps.", start_date: 'Wed Jul 1 10:00:00.00 2015', end_date: 'Wed Jul 1 12:00:00.00 2015', address: "817 Flushing Ave
Brooklyn, NY 11206" )
    Event.find(7).skills << Skill.find(1)

#Each event makes a call to Google's geocode API. Sleep(1) is used to avoid their 5 call per second limit.
sleep(1)


Project.create(user_id: 2, topic_id:7, name: "Bushwick School for Music", description: "Bushwick School for Music is holding tuition-free after school music classes for youth who have little access to arts or cultural programming in their neighborhood. Participants will choose an instrument they want to learn and spend the semer learning to read, write, and play music. The semer will culminate in a community music performance.", neighborhood: "Bushwick")
  Event.create(project_id: 4, name: 'Teach music lessons!', description: "We need volunteer instructors to teach kids how to play 26-2 in the key of B at 400 bpm.", start_date: 'Thu Jun 18, 17:00:00.00 2015', end_date: 'Thu Jun 18, 19:00:00.00 2015', address: '751 Knickerbocker Ave
Brooklyn, NY 11221')
    Event.find(7).skills << Skill.find(3)
    Event.find(7).skills << Skill.find(5)
  Event.create(project_id: 4, name: 'Teach music lessons!', description: "We need volunteer instructors to teach kids how to play 26-2 in the key of B at 400 bpm.", start_date: 'Thu Jun 25, 17:00:00.00 2015', end_date: 'Thu Jun 25, 19:00:00.00 2015', address: '751 Knickerbocker Ave
Brooklyn, NY 11221')
    Event.find(8).skills << Skill.find(3)
    Event.find(8).skills << Skill.find(5)
  Event.create(project_id: 4, name: 'Teach music lessons!', description: "We need volunteer instructors to teach kids how to play 26-2 in the key of B at 400 bpm.", start_date: 'Thu Jul 2, 17:00:00.00 2015', end_date: 'Thu Jul 2, 19:00:00.00 2015', address: '751 Knickerbocker Ave
Brooklyn, NY 11221')
    Event.find(9).skills << Skill.find(3)
    Event.find(9).skills << Skill.find(5)
  Event.create(project_id: 4, name: 'Teach music lessons!', description: "We need volunteer instructors to teach kids how to play 26-2 in the key of B at 400 bpm.", start_date: 'Thu Jul 9, 17:00:00.00 2015', end_date: 'Thu Jul 9, 19:00:00.00 2015', address: '751 Knickerbocker Ave
Brooklyn, NY 11221')

#Each event makes a call to Google's geocode API. Sleep(1) is used to avoid their 5 call per second limit.
sleep(1)

Project.create(user_id: 5, topic_id:2, name: "LUNGS (Loisaida United Neighborhood Gardens)", description: "LUNGS (Loisaida United Neighborhood Gardens) is sponsoring a local fival that will include, among many other events and activities, a series of environmental workshops open to the entire community. In the past this fival has attracted hundreds of residents and community members.", neighborhood: "East Village")
  Event.create(project_id: 5, name: 'Fall Harvest', description: "Harvest pumpkins and squash just in time for Halloween", start_date: 'Mon Oct 29, 17:00:00.00 2015', end_date: 'Mon Oct 29, 19:00:00.00 2015', address: '240 Avenue C
New York, NY 10009')
    Event.find(10).skills << Skill.find(1)
    Event.find(10).skills << Skill.find(6)

Project.create(user_id: 6, topic_id:4, name: "Slow Food NYC", description: "Slow Food NYC is launching composting at a new community garden to encourage and increase composting in the neighborhood. The garden members will ensure that the compost site is open to the public and do basic compost education to the community.", neighborhood: "Brownsville")
  Event.create(project_id: 6, name: 'Slow Food Night', description: "Super long dinner, mostly for the purpose of padding your volunteer hour stats.", start_date: 'Mon Oct 29, 12:00:00.00 2014', end_date: 'Mon Oct 29, 23:00:00.00 2014', address: '11 Broadway, New York, NY')
  Event.create(project_id: 6, name: 'Slow Food Breakfast', description: "Super long breakfast, mostly for the purpose of padding your volunteer hour stats.", start_date: 'Mon Oct 30, 01:00:00.00 2014', end_date: 'Mon Oct 30, 18:00:00.00 2014', address: '11 Broadway, New York, NY')
  Event.create(project_id: 6, name: 'All Day Eating', description: "Eating All Day, mostly for the purpose of padding your volunteer hour stats.", start_date: 'Mon Oct 31, 01:00:00.00 2014', end_date: 'Mon Oct 31, 23:00:00.00 2014', address: '11 Broadway, New York, NY')


Project.create(user_id: 7, topic_id:2, name: "Green Oasis Community Garden", description: "Green Oasis Community Garden is teaming up with a local community coalition to increase access to fresh vegetables and herbs. The group is organizing cooking demonstrations to teach community residents how to prepare nutritious meals. Through food sharing and fellowship, it is strengthening existing bonds and encouraging newcomers to connect with long-term residents.", neighborhood: "East Village")
Project.create(user_id: 8, topic_id:3, name: "Quincy Block Association", description: "Quincy Block Association is beginning a compost program on their block in partnership with neighbors, a community garden, and a local church. They are placing food scrap collection bins on the block for residents to drop off their waste, and turning this into compost for the community garden, planters at the church, and tree pits and vacant lots on the block.", neighborhood: "Brooklyn")
Project.create(user_id: 9, topic_id:6, name: "Advocates for Children - Families of Tomorrow", description: "Advocates for Children - Families of Tomorrow is involving several community recovery centers to address drug abuse issues. Motivational recovery speakers will share their recovery journeys with participants.", neighborhood: "Brooklyn")
Project.create(user_id: 10, topic_id:1, name: "Bronx Literary Festival Coalition", description: "Bronx Literary Festival Coalition promotes literacy among youth and works to encourage publishers to offer more works by people of color. The annual Literary Festival provides a space for teens and families to explore literature and other art forms, meet Bronx-based authors and artists, and participate in workshops and panels.", neighborhood: "Bronx")

User.find(1).events << Event.find(1)
User.find(1).events << Event.find(2)
User.find(1).events << Event.find(3)
User.find(2).events << Event.find(4)
User.find(2).events << Event.find(5)
User.find(2).events << Event.find(6)
User.find(3).events << Event.find(7)
User.find(3).events << Event.find(8)
User.find(3).events << Event.find(9)
User.find(4).events << Event.find(10)
User.find(4).events << Event.find(11)
User.find(4).events << Event.find(12)
User.find(5).events << Event.find(1)
User.find(5).events << Event.find(2)
User.find(5).events << Event.find(3)
User.find(6).events << Event.find(4)
User.find(6).events << Event.find(5)
User.find(6).events << Event.find(6)
User.find(7).events << Event.find(7)
User.find(7).events << Event.find(8)
User.find(7).events << Event.find(9)
User.find(8).events << Event.find(10)
User.find(8).events << Event.find(11)
User.find(8).events << Event.find(12)
User.find(9).events << Event.find(1)
User.find(10).events << Event.find(2)
User.find(11).events << Event.find(3)
User.find(12).events << Event.find(4)
User.find(13).events << Event.find(5)
User.find(14).events << Event.find(6)
User.find(15).events << Event.find(7)
User.find(16).events << Event.find(8)
User.find(17).events << Event.find(9)
User.find(18).events << Event.find(10)
User.find(19).events << Event.find(11)
User.find(20).events << Event.find(12)
User.find(21).events << Event.find(4)
User.find(22).events << Event.find(5)
User.find(23).events << Event.find(6)
User.find(24).events << Event.find(7)
User.find(25).events << Event.find(8)
User.find(26).events << Event.find(9)
User.find(27).events << Event.find(10)
User.find(28).events << Event.find(11)
User.find(29).events << Event.find(12)
User.find(1).events << Event.find(13)
User.find(2).events << Event.find(13)
User.find(3).events << Event.find(13)
User.find(4).events << Event.find(13)
User.find(5).events << Event.find(13)
User.find(1).events << Event.find(14)
User.find(2).events << Event.find(14)
User.find(3).events << Event.find(14)
User.find(4).events << Event.find(14)
User.find(5).events << Event.find(14)
User.find(1).events << Event.find(15)
User.find(2).events << Event.find(15)
User.find(3).events << Event.find(15)

