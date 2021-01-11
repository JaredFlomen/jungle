require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User Validations' do

    it 'Passwords must match' do
      @user = User.new(password: '123', password_confirmation: 'abc')
      expect(@user).to_not be_valid
    end

    it 'Passwords must be present' do
      @user = User.new(password: '123', password_confirmation: '123')
      expect(@user).to be_valid
    end

    it 'Emails must be unique' do
      @user = User.create(
        email: "jared@gmail.com"
      )
      @userTest = User.new(email: 'dafd@gmail.com')
      expect(@userTest).to_not be_valid
    end

    it 'Valid when all info is present' do
      @user = User.new(first_name: 'jared', last_name: 'flo', password: '123', password_confirmation: '123', email: 'jared@gmail.com')
      expect(@user).to be_valid
    end

  end
end
