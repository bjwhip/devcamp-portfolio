source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end



gem 'rails', '~> 5.1.3'

gem 'pg', '~> 0.18'

gem 'puma', '~> 3.7'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'




gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug', '~> 3.5'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'friendly_id', '~> 5.1.0'
gem 'devise', '~> 4.3'
gem 'bootstrap', '~> 4.0.0.beta'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'sock_view_tool', '~> 0.1.1'
gem 'petergate', '~> 1.7', '>= 1.7.5'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'kaminari', :git => 'https://github.com/kaminari/kaminari.git'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'dotenv-rails', '~> 2.2', '>= 2.2.1'
gem 'carrierwave-aws', '~> 1.2'
gem 'mini_magick', '~> 4.8'
gem 'cocoon', '~> 1.2', '>= 1.2.10'
gem 'gritter', '~> 1.2'
gem 'twitter', '~> 6.1'
gem 'redis', '~> 3.3', '>= 3.3.3'
gem 'redcarpet', '~> 3.4'
gem 'coderay', '~> 1.1', '>= 1.1.2'

ruby "2.4.0"