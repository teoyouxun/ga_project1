# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create :email => 'eugene@blog.co', :name => 'Eugene', :password => 'chicken', :admin => true
u2 = User.create :email => 'john@blog.co', :name => 'John', :password => 'chicken'
u3 = User.create :email => 'andy@blog.co', :name => 'Andy', :password => 'chicken'
puts "#{ User.count } users"

Post.destroy_all
p1 = Post.create(:title => 'New house', :image => 'https://www.realestate.com.au/blog/images/800x450-fit,progressive,format=webp/2019/11/11070015/capi_3d91838e3131ecc58a9a456c5f64e814_2604a0ab25126423a44aae499a1d2809.jpeg', content: 'Just bought a new home last week! Looking forward.') 
p2 = Post.create(:title => 'trippin', :image => 'https://i0.wp.com/imprintent.org/wp-content/uploads/2019/03/dd4f721c-6c8c-4d60-be0c-02776a50ccbd.jpeg?resize=640%2C427&ssl=1', content: 'About last night 😍')
p3 = Post.create(:title => 'New car', :image => 'https://images.squarespace-cdn.com/content/v1/5237a580e4b09510ca448d5e/1614404578787-IIIKAXD1T50WW6HQX5W5/Taycan+4S+EV+Brief.jpg?format=2500w', content: 'To a greener commute! 😍') 
p4 = Post.create(:title => 'Holiday', :image => 'https://content.tui.co.uk/adamtui/2017_9/6_9/402af3e4-9732-4b72-b622-a7e600960ca2/shutterstock_472963435WebOriginalCompressed.jpg?i10c=img.resize(width:1080);img.crop(width:1080%2Cheight:608)', content: 'Just came back from holiday in Bali last week!')

Follower.destroy_all
f1 = Follower.create(:name => 'William', :nationality => 'Australian', :dob => '1994-03-25')
f2 = Follower.create(:name => 'Andrew', :nationality => 'Australian', :dob => '1979-12-12')

# Associations

puts "Users and posts"
u2.posts << p1 << p2
u3.posts << p3 << p4

puts "Users and followers"
u2.followers << f1 << f2
u3.followers << f1 << f2

