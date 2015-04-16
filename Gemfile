source "https://rubygems.org"

ruby "2.1.3"

gem "airbrake"
gem "aws-sdk"
gem "cancan"
gem "delayed_job_active_record"
gem "dragonfly"
gem "dragonfly-s3_data_store"
gem "email_validator"
gem "excon"
gem "i18n-tasks"
gem "newrelic_rpm"
gem "pg"
gem "rabl"
gem "rack-timeout"
gem "rails", "4.1.6"
gem "recipient_interceptor"
gem "unicorn"

group :development do
  gem "spring"
  gem "spring-commands-rspec"
end

group :development, :test do
  gem "awesome_print"
  gem "byebug"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem "rspec-rails"
end

group :test do
  gem "capybara-webkit"
  gem "database_cleaner"
  gem "shoulda-matchers", require: false
  gem "timecop"
  gem "webmock"
end
