Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should see {string} button") do |element|
  expect(page).to have_content element
end

Then("I should see {string} in the {string} section") do |product, category|
  pending # Write code here that turns the phrase above into concrete actions
end