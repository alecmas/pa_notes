exit if !Rails.env.development?

puts "Deleting the data"
Rotation.delete_all
User.delete_all

puts "Creating user"
user = FactoryGirl.create(:user, email: "test@example.com")

puts "Creating rotations"
20.times do
  FactoryGirl.create(:rotation, user: user)
end
