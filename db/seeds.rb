# Create Clients

10.times do
	client = User.find_or_initialize_by(client_name: Faker::HeyArnold.character, email: Faker::Internet.safe_email) do |client|
		client.password = 'password'
		byebug
	end
	client.save!
end

# Create Admin User
admin = User.find_or_initialize_by(client_name: 'admin', email: Faker::Internet.safe_email) do |user|
	user.password = 'password'
	user.role =   'admin'
end
admin.save!

users = User.all

# Create Sheet Links
10.times do
	sheet_link = SheetLink.create!(
							 url: "https://docs.google.com/spreadsheets/d/e/2PACX-1vQBGkvCVm8armqckARgkdgRPC7BT49eFcnIhwrz6zYVcIWmDC7QpfpRTfjaRdpTE5DYRnOdFhmQtAPT/pubhtml",
							 user: users.sample
	)
end

puts "Seeding Finished"
puts "-.-.-.-.-.-.-.-.-"
puts "#{User.count} total users"
puts "#{SheetLink.count} total sheet links"