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
p5 = Post.create(:title => 'New toy!', :image => 'https://cdn.mos.cms.futurecdn.net/UeqCZzYknQfx5sBrkXBc4P.jpg', content: 'Going to be working from home for the next few months. LOL')
p6 = Post.create(:title => 'Last weekend out of town', :image => 'https://www.ytravelblog.com/wp-content/uploads/2014/05/Great-Ocean-Road-318.jpg', content: 'Perfect weather 😍') 
p7 = Post.create(:title => 'Bluetiful', :image => 'https://media.karousell.com/media/photos/products/2020/04/04/johnnie_walker_blue_label_x2_gift_set_1585990063_20dacda4_progressive.jpg', content: 'Souvenir from duty free shop....Thanks sis! 😍') 
p8 = Post.create(:title => 'VCE results are back!!', :image => 'https://preview.redd.it/pu6xbe1du5u71.png?auto=webp&v=enabled&s=b71302bfe40bc1628a88ced43a04dbd25e3f03cb', content: "Still can't get into medicine :(") 
puts "#{ Post.count } posts"


Follower.destroy_all
f1 = Follower.create(:name => 'William', :nationality => 'Australian', :dob => '1994-03-25')
f2 = Follower.create(:name => 'Andrew', :nationality => 'Australian', :dob => '1979-12-12')
puts "#{ Follower.count } followers"

# Associations

puts "Users and posts"
u2.posts << p1 << p2
u3.posts << p3 << p4 << p5 << p6 << p7 << p8

puts "Users and followers"
u2.followers << f1 << f2
u3.followers << f1 << f2

