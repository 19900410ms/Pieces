require "rails_helper"

describe Contribution do
  describe '#create' do
    it "is invalid without a title" do
      contribution = Contribution.new(title: "", image: "", text: "yy", user_id: "1", likes_count: "0", genre_id: "1", public_id: "1")
      contribution.valid?
      expect(contribution.errors[:title]).to include("can't be blank")
    end
  end
end