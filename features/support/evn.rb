
require File.join(File.dirname('__FILE__'), 'sports_app')
require 'rack/test'

module AppHelper
	def app
		SportsApp
	end
end

World(Rack::Test::Methods, AppHelper)
