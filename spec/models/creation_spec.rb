require 'rails_helper'

RSpec.describe Creation do

  describe 'Associations' do
    it { is_expected.to belong_to :user }
  end

  describe 'Lengths' do
    it do
      is_expected.to validate_length_of(:author).is_at_least(1).is_at_most 100
    end

    it do
      is_expected.to validate_length_of(:title).is_at_least(1).is_at_most 100
    end

    it { is_expected.to validate_length_of(:work).is_at_least 1 }
  end

  describe 'Presence' do
    it { is_expected.to validate_presence_of :author }
    it { is_expected.to validate_presence_of :title  }
    it { is_expected.to validate_presence_of :work   }
  end
end
