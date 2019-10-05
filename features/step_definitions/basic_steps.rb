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
  product = Product.find_by_title(product_name)
  within("#product_#{product.id}") do
    click_on element
  end
end