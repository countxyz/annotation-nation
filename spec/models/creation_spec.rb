require 'rails_helper'

RSpec.describe Creation do

  describe 'Associations' do
    it { is_expected.to belong_to :user }
  end

  describe 'Lengths' do
    it { is_expected.to validate_length_of(:creation).is_at_least 1 }

    it do
      is_expected.to validate_length_of(:creator).is_at_least(1).is_at_most 100
    end

    it do
      is_expected.to validate_length_of(:title).is_at_least(1).is_at_most 100
    end
  end

  describe 'Presence' do
    it { is_expected.to validate_presence_of :creation }
    it { is_expected.to validate_presence_of :creator  }
    it { is_expected.to validate_presence_of :title    }
  end
end
