require 'rails_helper'

RSpec.describe Client, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:identification_document) }
    it { is_expected.to validate_presence_of(:birth_date) }
  end
end
