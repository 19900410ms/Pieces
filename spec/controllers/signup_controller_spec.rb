require "rails_helper"

describe SignupController do
  
  describe "GET #signup_1" do
    it "renders the :signup_1 template" do
      user = create(:user)
      get :signup_1
      expect(response).to render_template :signup_1
    end
  end

  describe "GET #done" do
    it "renders the :done template" do
      user = create(:user)
      get :done
      expect(response).to render_template :done
    end
  end

end