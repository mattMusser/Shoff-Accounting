# Create Clients
client_one = User.find_or_initialize_by(client_name: 'Creative Photography', email: Faker::Internet.safe_email) do |client|
	client.password = 'password'
end
client_one.save!

client_two = User.find_or_initialize_by(client_name: 'Photography Company', email: Faker::Internet.safe_email) do |client|
	client.password = 'password'
end
client_two.save!

client_three = User.find_or_initialize_by(client_name: 'Web Photos', email: Faker::Internet.safe_email) do |client|
	client.password = 'password'
end
client_three.save!

client_four = User.find_or_initialize_by(client_name: 'Samson Creative', email: Faker::Internet.safe_email) do |client|
	client.password = 'password'
end
client_four.save!

# Create Admin User
admin = User.find_or_initialize_by(client_name: 'admin', email: Faker::Internet.safe_email) do |user|
	user.password = 'password'
	user.role =   'admin'
end
admin.save!

users = User.all

# Create Google Sheet Links

link_one = Link.create!(
	url: "https://docs.google.com/spreadsheets/d/e/2PACX-1vTiC8xOjR4iwQp7Zu0Hq-Net9zUYdHh2W92NxJc5QZabiRLhSqY6fbg6z__yXlJn0eRSfMUXlxMYRKn/pubhtml",
	user: users.find_by(client_name: 'Creative Photography')
)
link_one.save!

link_two = Link.create!(
	url: "https://docs.google.com/spreadsheets/d/e/2PACX-1vQ10cC-dSxIbU7Q0XcdFopfCvRKglYhqFKQY8PfzVC6W5Wa2uItlJclMiW7JsbmfnkAs4FMWjlHLTFe/pubhtml",
	user: users.find_by(client_name: 'Photography Company')
)
link_two.save!

link_three = Link.create!(
	url: "https://docs.google.com/spreadsheets/d/e/2PACX-1vSzLniL8xYG3-veqge3dxY8vrp-5CfwVvAz0kjdNIzrxvq6QZ6NyhjTfPAqOwznNe9G5eIgkB1x0YoS/pubhtml",
	user: users.find_by(client_name: 'Web Photos')
)
link_three.save!

link_four = Link.create!(
	url: "https://docs.google.com/spreadsheets/d/e/2PACX-1vRolYBhyrmvXnCgnsEw4ZR1QMyhvLarxscGH9o9VXnqt-RDVNsqfsD6KREv_YisghD6xuow_QSzxjvg/pubhtml",
	user: users.find_by(client_name: 'Samson Creative')
)
link_four.save!

links = Link.all

puts "Seeding Finished"
puts "-.-.-.-.-.-.-.-.-"
puts "#{User.count} total users"
puts "#{Link.count} total links"