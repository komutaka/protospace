require 'rails_helper'

describe User do
  describe '#create' do
    context 'valid' do
      it "is valid with all information" do
        expect(build(:user)).to be_valid
      end
    end

    context 'invalid' do
      it "is invalid without an email" do
        user = build(:user, email: "")
        user.valid?
        expect(user.errors[:email]).to include("を入力してください。")
      end

      it "is invalid without a password" do
        user = build(:user, password: "")
        user.valid?
        expect(user.errors[:password]).to include("を入力してください。")
      end

      it "is invalid if password doesn't match password_confirmation" do
        user = build(:user, password_confirmation: "hogehoge")
        user.valid?
        expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません。")
      end

      it "is invalid with a duplicate email address" do
        user = create(:user)
        another_user = build(:user, email: user.email)
        another_user.valid?
        expect(another_user.errors[:email]).to include("はすでに存在します。")
      end

      it "is invalid with a password that has less than 7 characters " do
        user = build(:user, password: "0000000", password_confirmation: "0000000")
        user.valid?
        expect(user.errors[:password][0]).to include("は8文字以上で入力してください。")
      end
    end

  end
end
