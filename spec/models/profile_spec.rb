require "rails_helper"

describe Profile do
  describe '#create' do

    context "can save" do

      #profile項目が全て入力済みであれば登録可能
      it "is valid with a id, gender, sports, study_fields" do
        profile = build(:profile)
        expect(profile).to be_valid
      end

    end
    
  end
end