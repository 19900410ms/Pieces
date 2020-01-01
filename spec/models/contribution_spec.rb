require "rails_helper"

describe Contribution do
  describe '#create' do

    context "can not save" do

      #titleが空では登録不可
      it "is invalid without a title" do
        contribution = build(:contribution, title: nil)
        contribution.valid?
        expect(contribution.errors[:title]).to include("can't be blank")
      end

      #textが空では登録不可
      it "is invalid without a text" do
        contribution = build(:contribution, text: nil)
        contribution.valid?
        expect(contribution.errors[:text]).to include("can't be blank")
      end

    end
    
  end
end