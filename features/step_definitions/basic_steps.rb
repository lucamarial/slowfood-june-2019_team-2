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
  product = Product.find_by_title(product_name)
  within("#product_#{product.id}") do
    click_on element
  end
end

And ("the following user exists") do |table|
  table.hashes.each do |table|
    FactoryBot.create(:user, table)
  end
end

And("I am on the landing page") do
  visit root_path
end

And("I fill in {string} with {string}") do |string, string2|
  fill_in string, with: string2
end

When("I click {string}") do |string|
  click_on string
end

When("I choose {string}") do |string|
end