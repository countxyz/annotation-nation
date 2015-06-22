require 'rails_helper'

RSpec.describe Artist do

  describe 'Associations' do
    it { is_expected.to belong_to :artistable }
  end

  describe 'Lengths' do
    it do
      is_expected.to validate_length_of(:name).is_at_least(1).is_at_most 100
    end
  end

  describe 'Presence' do
    it { is_expected.to validate_presence_of :name }
  end
end
