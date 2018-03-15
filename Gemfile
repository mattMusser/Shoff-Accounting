source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# **** STYLING ****
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Bootstrap 3
gem 'bootstrap-sass', '~> 3.3'
# Bootstrap Javascript depends on jQuery
gem 'jquery-rails', '~> 4.3'
# Use Sprockets Rails
gem 'sprockets-rails', :require => 'sprockets/railtie'
# Used to access font-awesome fonts
gem 'font-awesome-rails'
# Used to theme Active Admin
gem 'active_admin_theme'

# Use Devise for Authentication
gem 'devise', '~> 4.3'
# User Faker to generate seed data
gem 'faker', '~> 1.8'
# Use HAML as alternative to ERB
gem 'haml'
# Use Pundit for authorization
gem 'pundit'
# Use bcrypt for encryption
gem 'bcrypt'
# Use activeadmin for admin framework
gem 'activeadmin', '~>1.2'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :production do
  #Use pg as the production database for Active Record
  gem 'pg', '~> 0.21.0'
end

group :development do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 1.3.13'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
