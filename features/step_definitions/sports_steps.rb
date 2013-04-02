
Given(/^the system knows about the following sports::$/) do |sports|
SportsApp.data = sports.hashes
end 
