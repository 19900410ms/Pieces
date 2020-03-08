require "rails_helper"

describe Comment do
  describe '#create' do

    context "can save" do

      #comment項目が全て入力済みであれば登録可能
      it "is valid with a id, text, user_id, contribution_id" do
        comment = build(:comment)
        expect(comment).to be_valid
      end

    end
    
  end
end