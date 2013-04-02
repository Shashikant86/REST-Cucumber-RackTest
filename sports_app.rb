
require "sinatra"

class SportsApp < Sinatra::Base
	set :data, ''

	get '/sports' do
		content_type :json
		SportsApp.data.to_json
	end
end

