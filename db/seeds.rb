# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'

images = %w(
http://www.slopemedia.org/wp-content/uploads/2016/09/tubitos.jpg
http://www.atlanticlab.ca/img/photo/2.jpg
http://techsytalk.com/wp-content/uploads/2015/01/o-MEDICAL-LAB-facebook_064505.jpg
https://fthmb.tqn.com/Lnf9fNkA0q9MYDJndP0Z-An3Q2I=/5120x3413/filters:fill(auto,1)/beakers-with-solution-on-shelf-in-lab-521811051-5823504d3df78c6f6a8dc038.jpg
https://si.wsj.net/public/resources/images/BI-AB154_LAB_GR_20160405111106.jpg
http://www.ezag.com/fileadmin/user_upload/radiopharma/gallery-images/modular-lab-pharm-tracer/C4-Ga68-PP_Ausschnitt_3.jpg
http://www.images.searchpointer.com/chemicals/1833/1.jpg
http://www.hitechhealthcarelab.com/images/slider/img1.jpg
https://backgroundimages.withfloats.com/actual/5953ca3b04b5b60b7c5a0830.jpg
http://eblogin.com/wp-content/uploads/2017/05/Chemicals.jpg
https://www.naturalnews.com/wp-content/uploads/sites/91/2017/10/Beaker-Dropper-Lab.jpg
https://fthmb.tqn.com/rxmFbijZlqk-DoMdgTQIjnX72rc=/3644x2733/filters:no_upscale():fill(FFCC00,1)/chemical-experiment-156432760-57aca8bf3df78cf459b0184e.jpg
http://cms.freetrade.com.eg/NewsUploads/news/lab%20chemicals%20(2).jpg
)

images.each do |image|
  Post.create(image: image,
              title: FFaker::Lorem.sentence(1),
              body: FFaker::Lorem.paragraph(15),
              views: rand(0..3))
end

Admin::User.create(email: 'admin@example.com', password: '12345678')
