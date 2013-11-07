# Given (/^I have save the following links:$/)
# links.hashes.each do |link|
# 	Link.create()




# -------
# Given(/^I am on the homepage$/) do
# 	 visit '/'
# end

# Then(/^I should see "(.*?)"$/)   do |content|

# 	puts page.inspect
# 	puts page.methods.sort.join(' ')
# 	puts page.body.inspect
# 	page.should have_content(content)
# end

Given(/^the following links are available:$/) do |uri|
  # table is a Cucumber::Ast::Table
  uri.hashes.each do |webaddress|
  	tag_object = Tag.create({"text" => webaddress["tags"]})
  	webaddress.delete("tags")
  	
  	tag_object_array = [] << tag_object
  	puts "tag_object_array: #{tag_object_array}"
  	new_wba = webaddress.merge("tags" => tag_object_array)
  	puts "new_wba: #{new_wba}"
  	Linkdb.create(new_wba)
  end
end