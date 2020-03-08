require "rails_helper"

describe Like do
  describe '#create' do

    context "can save" do

      #like項目が全て入力済みであれば登録可能
      it "is valid with a user_id, contribution_id" do
        like = build(:like)
        expect(like).to be_valid
      end

    end
    
  end
end