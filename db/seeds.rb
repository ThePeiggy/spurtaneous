# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	user = User.new(email: "admin@example.com", password: "password", password_confirmation: "password", firstname: "Admin", lastname: "User", location: "Detroit, MI")
	user.save
	user.causes.new(name: "Single Parents’ Free Daycare", description: "SPFD is a non-profit organization started by Martha 
							Kinsley. When she was 32, her husband was sent to prison. She then became a single mother, 
							who faced the everyday fear of not having enough money to feed her children the next day. 
							She couldn’t get a job, because she couldn’t afford a nanny. After facing this struggle, 
							she opened a non-profit organisation in the hopes of helping single parents with their problems. 
							With many branches of daycares open, she hopes to continue to expand their network of free daycare for 
							children whose parents are getting out of a hard time.", unit_donation: 1,
							image: "http://1.bp.blogspot.com/-cYIpih0xqV0/UbeGQQy8_gI/AAAAAAAAAo8/Hkm2uBICaXM/s1600/single-dad-cartoon.jpg",
							location: "New York, NY").save

	user.causes.new(name: "You Are Luidaso’s Hero", description: "In 2046, Luidaso suffered a terrible earthquake, followed 
							by a tsunami that completely destroyed their country. 157,000 people died, 54,000 were severely 
							injured, and 20,000 were left without a home. Currently, the government is helping rebuild the 
							cities and has provided shelters to its citizens, nonetheless, many are still left without supplies. 
							Your donation could help feed rebuild or feed a family, so the country can get back on its feet 
							after this natural disaster. Are you ready to be a family’s hero?", unit_donation: 3,
							image: "http://images.thevine.com.au/resources/images/000/003/3179_melbourne%20quake%202012_200612100132_591w.png",
							location: "Luidaso").save

	user.causes.new(name: "Feminism in the Middle East Countries", description: "Although feminism in Western countries has 
							reached a point where women can get the same respect a man would, many forget that many countries in 
							the Middle East still have virtually no rights for their female citizens. For instance, in 2014, women 
							still don’t have the right to drive, women are not allowed in football stadiums, and women are still 
							stoned for adultery and premarital sex. Although their religious beliefs are to be respected, women have 
							to be protected. Your donation goes directly into the ONU’s Women in the Middle East fund, which has 
							recently started to intervene in this countries since 2020.", unit_donation: 2,
							image: "http://inshia.com/wp-content/uploads/2014/11/muslim-women-demographic-jihad.jpg",
							location: "Riyadh, UAE").save

	user.causes.new(name: "Children in Technology", description: "Children’s childhood has changed severely since the 1990’s. 
							Nowadays, children have an immense amount of content at the tip of their fingers; whether it is 
							appropriate for them or not. CIT seeks to teach children the right way to use all the tools that 
							they have available to them. The small donation helps to pay our volunteer instructors to go from 
							school to school in the available areas in order to teach children the wonders of programming. 
							We hope that with increasing funds, we will be able to reach all major areas of USA and Canada, 
							as well as creating events for kids from smaller towns to come learn.", unit_donation: 1,
							image: "http://twstheunagency.files.wordpress.com/2011/01/child_with_computer.jpg",
							location: "Shanghai, China").save

	user.causes.new(name: "Colonizing the Stars", description: "In the year 6billion (today, March, 6,000,600,004 a.E.A 
							(absolute Earth Age)) intellectuals predicted that our Earth would die in at most the next centuries; 
							we are already at risk. Scientists have been developing ways for mankind to live on other areas of the 
							space, but we have yet to find a stable environment for the whole mankind to travel. Many have already 
							moved to other galaxies, where they have found new families, but until other galaxies and planets are 
							ready to open their doors for us, we must work in finding a proper home. All of Earth’s budget is currently 
							being allocated to this major issue, we need everyone’s help.", unit_donation: 5,
							image: "http://astronoteen.org/wp-content/uploads/2014/08/800px-People_looking_at_stars.jpg",
							location: "Space").save