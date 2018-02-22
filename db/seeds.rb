# Create Clients
client_one = User.find_or_initialize_by(client_name: 'Creative Photography', email: Faker::Internet.safe_email) do |client|
	client.password = Faker::Internet.password
end
client_one.save!

client_two = User.find_or_initialize_by(client_name: 'Photography Company', email: Faker::Internet.safe_email) do |client|
	client.password = Faker::Internet.password
end
client_two.save!

client_three = User.find_or_initialize_by(client_name: 'Web Photos', email: Faker::Internet.safe_email) do |client|
	client.password = Faker::Internet.password
end
client_three.save!

client_four = User.find_or_initialize_by(client_name: 'Samson Creative', email: Faker::Internet.safe_email) do |client|
	client.password = Faker::Internet.password
end
client_four.save!

# Create Admin User
admin = User.find_or_initialize_by(client_name: 'admin', email: Faker::Internet.safe_email) do |user|
	user.password = 'password'
end
admin.save!

# Create Standard User
standard = User.find_or_initialize_by(client_name: 'standard', email: Faker::Internet.safe_email) do |user|
	user.password = 'password'
end
standard.save!
users = User.all

puts "Seeding Finished"
puts "-.-.-.-.-.-.-.-.-"
puts "#{User.count} total users"