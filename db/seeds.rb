Picture.delete_all

User.delete_all

colin = User.create!({ first_name: "Colin", last_name: "Ellis", email: "colin@example.com" })
jeroen = User.create!({ first_name: "Jeroen", last_name: "Knol", email: "jeroen@example.com" })
hans = User.create!({ first_name: "Hans", last_name: "Van Atten", email: "hans@example.com" })
sander = User.create!({ first_name: "Sander", last_name: "Sijbrandij", email: "sander@example.com" })


images = [
  [
    { image_url: "https://images.unsplash.com/photo-1420768255295-e871cbf6eb81?dpr=1&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 2.days.ago,
      user_id: colin.id },
    { image_url: "https://images.unsplash.com/photo-1442508748335-fde9c3f58fd9?dpr=1&auto=format&fit=crop&w=767&h=576&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 3.days.ago,
      user_id: colin.id },
    { image_url: "https://images.unsplash.com/photo-1469173479606-ada03df615ac?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 4.days.ago,
      user_id: colin.id },
    { image_url: "https://images.unsplash.com/photo-1473220464492-452fb02e6221?dpr=1&auto=format&fit=crop&w=767&h=512&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 5.days.ago,
      user_id: colin.id },
    { image_url: "https://images.unsplash.com/32/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg?dpr=1&auto=format&fit=crop&w=767&h=432&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 6.days.ago,
      user_id: colin.id },
    { image_url: "https://images.unsplash.com/photo-1451976426598-a7593bd6d0b2?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 7.days.ago,
      user_id: colin.id },
    { image_url: "https://images.unsplash.com/photo-1469386846711-1df926ac1129?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 8.days.ago,
      user_id: colin.id },
  ],

  [
    { image_url: "https://images.unsplash.com/reserve/91JuTaUSKaMh2yjB1C4A_IMG_9284.jpg?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 2.days.ago,
      user_id: jeroen.id },
    { image_url: "https://images.unsplash.com/photo-1434144893279-2a9fc14e9337?dpr=1&auto=format&fit=crop&w=767&h=471&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 3.days.ago,
      user_id: jeroen.id },
    { image_url: "https://images.unsplash.com/photo-1439886183900-e79ec0057170?dpr=1&auto=format&fit=crop&w=767&h=471&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 4.days.ago,
      user_id: jeroen.id },
    { image_url: "https://images.unsplash.com/photo-1467189386127-c4e5e31ee213?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 5.days.ago,
      user_id: jeroen.id },
    { image_url: "https://images.unsplash.com/photo-1468779065891-103dac4a7c48?dpr=1&auto=format&fit=crop&w=767&h=431&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 6.days.ago,
      user_id: jeroen.id },
    { image_url: "https://images.unsplash.com/photo-1469521669194-babb45599def?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 7.days.ago,
      user_id: jeroen.id },
    { image_url: "https://images.unsplash.com/photo-1471623432079-b009d30b6729?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 8.days.ago,
      user_id: jeroen.id },
  ],

  [
    { image_url: "https://images.unsplash.com/photo-1423012373122-fff0a5d28cc9?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 2.days.ago,
      user_id: hans.id },
    { image_url: "https://images.unsplash.com/photo-1467811884194-ae868cd3f090?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 3.days.ago,
      user_id: hans.id },
    { image_url: "https://images.unsplash.com/photo-1473294312123-83488e2f8e8f?dpr=1&auto=format&fit=crop&w=767&h=510&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 4.days.ago,
      user_id: hans.id },
    { image_url: "https://images.unsplash.com/photo-1476610182048-b716b8518aae?dpr=1&auto=format&fit=crop&w=767&h=464&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 5.days.ago,
      user_id: hans.id },
    { image_url: "https://images.unsplash.com/5/unsplash-kitsune-4.jpg?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 6.days.ago,
      user_id: hans.id },
    { image_url: "https://images.unsplash.com/reserve/NnDHkyxLTFe7d5UZv9Bk_louvre.jpg?dpr=1&auto=format&fit=crop&w=767&h=518&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 7.days.ago,
      user_id: hans.id },
    { image_url: "https://images.unsplash.com/5/unsplash-kitsune-4.jpg?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 8.days.ago,
      user_id: hans.id },
  ],
  [
    { image_url: "https://images.unsplash.com/photo-1466150036782-869a824aeb25?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 2.days.ago,
      user_id: sander.id },
    { image_url: "https://images.unsplash.com/photo-1474711850460-45057e434715?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 3.days.ago,
      user_id: sander.id },
    { image_url: "https://images.unsplash.com/photo-1474980660552-84fda824db4e?dpr=1&auto=format&fit=crop&w=767&h=479&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 4.days.ago,
      user_id: sander.id },
    { image_url: "https://images.unsplash.com/reserve/unsplash_528b27288f41f_1.JPG?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 5.days.ago,
      user_id: sander.id },
    { image_url: "https://images.unsplash.com/photo-1478472190689-fa020c20809a?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 6.days.ago,
      user_id: sander.id },
    { image_url: "https://images.unsplash.com/photo-1470220836134-b79b61db4449?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 7.days.ago,
      user_id: sander.id },
    { image_url: "https://images.unsplash.com/photo-1477610459453-1a20bea25b68?dpr=1&auto=format&fit=crop&w=767&h=511&q=80&cs=tinysrgb&crop=",
      caption: "Caption Text",
      taken_on: 8.days.ago,
      user_id: sander.id },
  ]
]

images.each do |user|
  user.each do |img|
    Picture.create!(img)
  end
end

# users = [colin, jeroen, hans, sander]
#
# users.each do |user|
#   7.times do |n|
#     Picture.create!({ image_url: "example.com/#{user.first_name}/#{n+1}.jpg",
#                       caption: "Caption Text",
#                       taken_on: n.days.ago,
#                       user_id: user.id })
