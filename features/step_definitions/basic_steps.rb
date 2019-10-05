Given("I click {string} button") do |string|
 click_on string
end

When("I'm on the landing page") do
  visit root_path
end

Given("the following products exist") do |table|
  table.hashes.each do |product|
    category = Category.find_or_create_by(title: product[:category])
    product.except!('category')
    FactoryBot.create( :product, product.merge(category: category))
  end
end

When("I click {string} on {string}") do |element, product_name|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
