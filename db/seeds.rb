# Create Clients
10.times do
	user = User.find_or_initialize_by(client_name: Faker::Company.name, email: Faker::Internet.safe_email) do |user|
		user.password = Faker::Internet.password
	end
	user.skip_confirmation!
	user.save!
end

# Create Admin User
admin = User.find_or_inititalize_by(client_name: 'admin', email: 'markshare101@gmail.com') do |user|
	user.password = 'password'
end
admin.skip_confirmation!
admin.save!

# Create Standard User
standard = User.find_or_initialize_by(client_name: 'standard', email: 'markshare101@gmail.com') do |user|
	user.password = 'password'
end
standard.skip_confirmation!
standard.save!
users = User.all

puts "Seeding Finished"
puts "-.-.-.-.-.-.-.-.-"
puts "#{User.count} total users"