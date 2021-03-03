ENV['RAILS_ENV'] ||= ENV['RACK_ENV'] || 'development'
ENV['NODE_ENV'] ||= 'development'

require 'pathname'
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile',
                                           Pathname.new(__FILE__).realpath)

require 'bundler/setup'

require 'webpacker'
require 'webpacker/dev_server_runner'

APP_ROOT = File.expand_path('..', __dir__)
Dir.chdir(APP_ROOT) do
  Webpacker::DevServerRunner.run(ARGV)
end
