1.times do |user|
  User.create!(
    email: "user@test.com",
    password: "asdfasdf",
  )
end

puts "1 user created"

1.times do |admin|
  User.create!(
    email: "admin@test.com",
    password: "asdfasdf",
    roles: "admin",
  )
end

puts "1 admin created"