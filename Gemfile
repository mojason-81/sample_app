source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bcrypt',                  '~> 3.1', '>= 3.1.11'
gem 'bootstrap-sass',          '~> 3.3', '>= 3.3.7'
gem 'bootstrap-will_paginate', '~> 1.0'
gem 'carrierwave',             '~> 1.2', '>= 1.2.1'
gem 'coffee-rails',            '~> 4.2', '>= 4.2.2'
gem 'fog',                     '~> 1.42'
gem 'jbuilder',                '~> 2.7'
gem 'jquery-rails',            '~> 4.3', '>= 4.3.1'
gem 'mini_magick',             '~> 4.8'
gem 'puma',                    '~> 3.11'
gem 'rails',                   '~> 5.1', '>= 5.1.4'
gem 'sass-rails',              '~> 5.0', '>= 5.0.7'
gem 'turbolinks',              '~> 5.0', '>= 5.0.1'
gem 'uglifier',                '~> 3.2'
gem 'will_paginate',           '~> 3.1', '>= 3.1.6'

group :development, :test do
  gem 'faker'
  gem 'pry-rails'
  gem 'sqlite3', '~> 1.3', '>= 1.3.13'
  gem 'therubyracer'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'
end

group :test do
  gem 'guard'
  gem 'guard-minitest'
  gem 'minitest-reporters'
  gem 'rails-controller-testing'
end

group :production do
  gem 'pg', '~> 0.21.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

