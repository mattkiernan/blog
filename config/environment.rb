# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

if Rails.env.development?
    Rails.logger = Le.new('89239e43-e535-4b91-be24-07dbfd84b7f1', debug: true)
else
    Rails.logger = Le.new('89239e43-e535-4b91-be24-07dbfd84b7f1')
end

Rails.logger.info
