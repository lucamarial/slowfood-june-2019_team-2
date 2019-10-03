require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Database table' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_db_column :title}
    it {is_expected.to have_db_column :content}
    it {is_expected.to have_db_column :price}
  end

  describe 'Validates attributes' do
    it {is_expected.to validate_presence_of :title}
    it {is_expected.to validate_presence_of :content}
    it {is_expected.to have_db_column :price}
  end

  describe 'Associations' do
    it {is_expected.to belong_to :category}
  end

  describe 'Factory' do
    it 'should have a valid Factory' do
      expect(FactoryBot.create(:product)).to be_valid
    end
  end
end