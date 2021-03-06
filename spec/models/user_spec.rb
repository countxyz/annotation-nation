require 'rails_helper'

RSpec.describe User do

  describe 'Associations' do
    it { is_expected.to have_many(:creations) }
  end

  describe 'Formats' do
    it { is_expected.to allow_value('abc@xyz.com').for :email             }
    it { is_expected.to_not allow_value('user@example,com').for :email    }
    it { is_expected.to_not allow_value('user_at_example.com').for :email }
  end

  describe 'Lengths' do
    it do
      is_expected.to validate_length_of(:email).is_at_least(5).is_at_most 50
    end

    it do
      is_expected.to validate_length_of(:handle).is_at_least(6).is_at_most 20
    end

    it do
      is_expected.to validate_length_of(:password).
      is_at_least(8).is_at_most 128
    end
  end

  describe 'Presence' do
    it { is_expected.to validate_presence_of :email  }
    it { is_expected.to validate_presence_of :handle }
  end

  describe 'Uniqueness' do
    subject { build :user                                                    }
    it      { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it      { is_expected.to validate_uniqueness_of(:handle)                 }
  end

  describe 'password confirmation' do
    context 'without password confirmation' do
      it 'is invalid' do
        expect(build :user, password_confirmation: '').to_not be_valid
      end
    end

    context 'with password confirmation' do
      it 'is valid' do
        expect(build :user).to be_valid
      end
    end
  end

  describe 'authentication' do
    context 'correct password submitted' do
      it 'authenticates successfully' do
        expect(build(:user).authenticate 'password').to be
      end
    end

    context 'incorrect password submitted' do
      it 'does not authenticate' do
        expect(build(:user).authenticate 'passwordy').to_not be
      end
    end
  end

  describe 'callbacks' do
    it 'ensures email downcase before save' do
      expect((create :user, email: 'A@A.CO').email).to eq 'a@a.co'
    end
  end
end
