User.delete_all
Picture.delete_all

colin = User.create!({ first_name: "Colin", last_name: "Ellis", email: "colin@example.com" })
jeroen = User.create!({ first_name: "Jeroen", last_name: "Knol", email: "jeroen@example.com" })
hans = User.create!({ first_name: "Hans", last_name: "Van Atten", email: "hans@example.com" })
sander = User.create!({ first_name: "Sander", last_name: "Sijbrandij", email: "sander@example.com" })

users = [colin, jeroen, hans, sander]

users.each do |user|
  7.times do |n|
    Picture.create!({ image_url: "example.com/#{user.first_name}/#{n+1}.jpg",
                      caption: "Caption Text",
                      taken_on: n.days.ago,
                      user_id: user.id })
  end
end
