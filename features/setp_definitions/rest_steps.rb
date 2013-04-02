
When /^the client requests GET (.*)$/ do |path|
	get(path)
end

Then /^response should be JSON:$/ do |json|
	JSON.parse(last_response.body).should == JSON.parse(json)
end

Then /^response should be "([^"]*)"$/ do |status|
    last_response.status.should == status.to_i
end

Then /^the JSON response should be an array with (\d+) "([^"]*)" elements$/ do |num, name|
page = JSON.parse(last_response.body)
  page.map { |d| d[name] }.length.should == num.to_i
end
