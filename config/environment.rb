# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

if Rails.env.development?
    Rails.logger = Le.new('ac2b35e4-72c5-4188-b4c7-86c37e9bff35', debug: true)
else
    Rails.logger = Le.new('ac2b35e4-72c5-4188-b4c7-86c37e9bff35')
end

Rails.logger.info("This is info")
Rails.logger.warn("This is a warning")
Rails.logger.debug("This is debugging")
