Given("the following product exist") do |table|
  table.hashes.each do |table|
    FactoryBot.create(:product, table)
  end
end

Given("following user exist") do |table|
  table.hashes.each do |hash|
    User.create!(hash)
  end
end

When("I'm on the landing page") do
  visit root_path
end

Then("I should see {string}") do |content|
expect(page).to have_content content
end

When("I click {string} button/link") do |string|
click_on string
end

When("I fill in {string} with {string}") do |string, string2|
fill_in string, :with => string2
end

Then("I should be on {string} page") do |string|
article = Article.find_by(title: string)
expect(current_path).to eq article_path(article)
end