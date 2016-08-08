require 'rails_helper'

describe User do
  describe '#create' do
    #省略
    it "is invalid without an email" do
     user = User.new(nickname: "abe", email: "", password: "00000000", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
  end
end