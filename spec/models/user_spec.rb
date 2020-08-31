require 'rails_helper'

RSpec.describe User, :type => :model do
  it 'is valid with a firstName' do
    expect(FactoryBot.build(:user, :firstName => '')).to_not be_valid
  end

  it 'is invalid with a too long firstName' do
    expect(FactoryBot.build(:user, :firstName => 'a' * 21)).to_not be_valid
  end

  it 'is valid with a lastName' do
    expect(FactoryBot.build(:user, :lastName => '')).to_not be_valid
  end

  it 'is invalid with a too long lastName' do
    expect(FactoryBot.build(:user, :lastName => 'a' * 21)).to_not be_valid
  end

  it 'returns full name' do
    expect(FactoryBot.build(:user).name).to eq 'Takayuki Nakamura'
  end

  it 'is valid with a email' do
    expect(FactoryBot.build(:user, :email => '')).to_not be_valid
  end

  it "can't register with the duplicated email" do
    user1 = FactoryBot.create(:user, :email => 'taro@example.com')
    expect(FactoryBot.build(:user, :email => user1.email)).to_not be_valid
  end

  it 'id valid with a password' do
    expect(FactoryBot.build(:user, :password => '')).to_not be_valid
  end

  it 'check the password is encrypted' do
    user = FactoryBot.create(:user)
    expect(user.encrypted_password).to_not eq 'password'
  end

  it 'matches the password_confirmation and the password' do
    expect(FactoryBot.build(:user, :password => 'password', :password_confirmation => 'passward')).to_not be_valid
  end

  it 'saves email addresses as lower-case' do
    mixed_case_email = 'Foo@ExAMPle.CoM'
    user = FactoryBot.create(:user, :email => mixed_case_email)
    expect(user.reload.email).to eq mixed_case_email.downcase
  end

  it 'is invalid with a blank password' do
    user = FactoryBot.build(:user, :password => ' ' * 6)
    user.valid?
    expect(user.errors[:password]).to include('が入力されていません。')
  end

  it 'is invalid with a password less than 6 characters' do
    user = FactoryBot.build(:user, :password => 'a' * 5)
    user.valid?
    expect(user.errors[:password]).to include('は6文字以上に設定して下さい。')
  end
end
