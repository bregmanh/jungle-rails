require 'rails_helper'

describe 'users validations' do
  describe 'must be created with a password and password_confirmation fields' do
    before do    
      @user = User.create(name: 'Apparel', email:"TEST@TEST.com",  password: "test", password_confirmation:"test")

    end 
    it 'must be created with a password ' do
      expect(@user).to be_valid
    end
   
  it 'password and password confirmation should match' do
    expect(@user.password).to eq(@user.password_confirmation)
  end

  it 'Emails must be unique (not case sensitive)' do
    user1 = User.create(name: 'Apparel', email:"test@test.com",  password: "test", password_confirmation:"test")
    expect(user1).not_to be_valid
    
  end

  it 'Email, first name, and last name should also be required' do
    user2 = User.create( email:"test@test.COM",  password: "test", password_confirmation:"test")
    expect(user2).not_to be_valid

  end
  it 'password must have a minimum length when a user account is being created' do
    user3 = User.create(name: 'Apparel',  email:"test@test.COM",  password: "t", password_confirmation:"test")
    expect(user3).not_to be_valid
  end
end

describe '.authenticate_with_credentials' do
  # examples for this class method here
end
end