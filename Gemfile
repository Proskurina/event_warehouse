source 'https://rubygems.org'

# TODO: We pretty much just use active record and active mailer, do we need rails?
gem "rails", "~> 4.2"
gem "mysql2"

# TODO: COnsider switching to Bunny if possible
gem "amqp", "~> 1.5"

# Replaces use of lib/uuidable.rb as the latter was provind to
# be a bit brittle. Allows use of binary uuid columns.
gem 'activeuuid'

# We use a special version of hashie to bypass rails protected attributes.
# Consider removing Hashie entirely
gem "hashie-forbidden_attributes"
gem "rest-client"
gem "migration_comments"

# The gems commented out below were part of warehouse_two/three
# The extra support they provided is not needed for the event warehouse, leaving them here
# as an active reminder to avoid someone re-implementing the wheel if we need them in future

# We have to use composite primary keys because of the table partitioning
# gem "composite_primary_keys", "~> 5.0.10"
# gem "activerecord-partitioning", :git => "git+ssh://git@github.com/sanger/activerecord-partitioning.git"
# gem "activerecord-triggers", :git => "git+ssh://git@github.com/sanger/activerecord-triggers.git"

# # Need a branched verion of the rails_sql_views gem to support MySQL2 and ActiveRecord 3.
# gem "rails_sql_views", :git => "git+ssh://git@github.com/anathematic/rails_sql_views.git"

group :test, :development do
  gem 'rspec-rails', '~> 3.1'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'mocktra', '~> 1.0.2'
  gem 'pry'
end

group :development do
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-rspec'
end

group :deployment do
  gem "psd_logger", :git => "git+ssh://git@github.com/sanger/psd_logger.git"
end
