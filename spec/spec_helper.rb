#encoding: utf-8
require 'bundler'
Bundler.setup(:default, :development)

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docktord/docktord'


RSpec.configure do |config|
  config.order = 'random'

  config.expect_with :rspec do |c|
    c.syntax = [:expect]
  end

end

