RSpec.describe User, type: :model do
  describe 'Database table' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_db_column :email}
    it {is_expected.to have_db_column :encrypted_password}
  end

  describe 'Validates attributes' do
    it {is_expected.to validate_presence_of :email}
    it {is_expected.to validate_presence_of :password}
  end

  describe 'Factory' do
    it 'should have a valid Factory' do
      expect(FactoryBot.create(:user)).to be_valid
    end
  end
end