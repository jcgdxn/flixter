# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

#https://github.com/carrierwaveuploader/carrierwave/issues/1103
require 'carrierwave/orm/activerecord'
