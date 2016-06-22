require 'rspec'
require './application'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :document
end
