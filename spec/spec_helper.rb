SimpleCov.start do
  add_filter "/spec/"
end

require 'rspec'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :faraday
  c.configure_rspec_metadata!
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'impact_space'
