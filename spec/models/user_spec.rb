require "rails_helper"

describe User do
  describe "#create" do

    context "can save" do

      #user項目が全て入力済みであれば登録可能
      it "is valid with a id, nickname, email, password, password_confirmation" do
        user = build(:user)
        expect(user).to be_valid
      end

      #passwordが7文字以上であれば登録可能
      it "is valid with a password that has more than 7 characters " do
        user = build(:user, password: "yamada12", password_confirmation: "yamada12")
        user.valid?
        expect(user).to be_valid
      end

    end

    context "can not save" do
      
      #nicknameが空では登録不可
      it "is invalid without a nickname" do
        user = build(:user, nickname: nil)
        user.valid?
        expect(user.errors[:nickname]).to include("can't be blank")
      end

      #emailが空では登録不可
      it "is invalid without a email" do
        user = build(:user, email: nil)
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
      end

      #passwordが空では登録不可
      it "is invalid without a password" do
        user = build(:user, password: nil)
        user.valid?
        expect(user.errors[:password]).to include("can't be blank")
      end

      #passwordが存在してもconfirmation_passwordが空では登録不可
      it "is invalid without a password_confirmation although with a password" do
        user = build(:user, password_confirmation: "")
        user.valid?
        expect(user.errors[:password_confirmation]).to include("doesn't match Password")
      end

      #すでに存在しているemailは登録不可
      it "is invalid with a duplicate email address" do
        user = create(:user, id: "2", nickname: "yamada", email: "daigo@gmail.com", password: "yamada1234", password_confirmation: "yamada1234")
        another_user = build(:user, email: user.email)
        another_user.valid?
        expect(another_user.errors[:email]).to include("has already been taken")
      end

      #passwordが6文字以下では登録不可
      it "is invalid with a password that has less than 6 characters" do
        user = build(:user, password: "sato12", password_confirmation: "sato12")
        user.valid?
        expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
      end

    end
  end

end