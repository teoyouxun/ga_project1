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
p3 = Post.create(:title => 'New house', :image => 'https://www.realestate.com.au/blog/images/800x450-fit,progressive,format=webp/2019/11/11070015/capi_3d91838e3131ecc58a9a456c5f64e814_2604a0ab25126423a44aae499a1d2809.jpeg', content: 'Just bought a new home last week! Looking forward.') 
p4 = Post.create(:title => 'trippin', :image => 'https://i0.wp.com/imprintent.org/wp-content/uploads/2019/03/dd4f721c-6c8c-4d60-be0c-02776a50ccbd.jpeg?resize=640%2C427&ssl=1', content: 'About last night 😍')

Follower.destroy_all
f1 = Follower.create(:name => 'William', :nationality => 'Australian', :dob => '1879-02-22',)
f2 = Follower.create(:name => 'Andrew', :nationality => 'Australian', :dob => '1879-02-22',)

# Associations

puts "Users and posts"
u2.posts << p1 << p2
u3.posts << p3 << p4

puts "Users and followers"
u2.followers << f1 << f2
u3.followers << f1 << f2

