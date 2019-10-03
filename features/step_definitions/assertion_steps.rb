Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should see {string} button") do |element|
  expect(page).to have_content element
end