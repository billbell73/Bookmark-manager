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


Given(/^the following links are available:$/) do |links|
  links.hashes.each do |link|
  	Linkdb.create({
  		title: link['title'], url: link['url'],
  		tags: [Tag.create({text: link['tags']})]
  		})
  end
end

Then(/^there should be an entry for "(.*?)" in the database$/) do |email_address|
  expect(User.last.email).to eq email_address
  # expect(User.get(email: email_address).email).to eq email_address
end