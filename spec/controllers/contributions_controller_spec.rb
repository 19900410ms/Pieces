require 'rails_helper'

describe ContributionsController do

  describe "GET #index" do
    it "populates an array of contributions ordered by created_at DESC" do
      user = create(:user)
      contributions = create_list(:contribution, 5)
      get :index
      expect(assigns(:contributions)).to match(contributions.sort{ |a, b| b.created_at <=> a.created_at } )
    end
    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #show" do
    it "renders the :show template" do
      user = create(:user)
      contribution = create(:contribution)
      get :show, params: { id: contribution }
      expect(response).to render_template :show
    end
  end

  describe "GET #new" do
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "GET #edit" do
    it "assigns the requested contribution to @contribution" do
      user = create(:user)
      contribution = create(:contribution)
      get :edit, params: { id: contribution }
      expect(response).to render_template :edit
    end
    it "renders the :edit template" do
      user = create(:user)
      contribution = create(:contribution)
      get :edit, params: { id: contribution }
      expect(response).to render_template :edit
    end
  end

  describe "GET #top_page" do
    it "renders the :top_page template" do
      get :top_page
      expect(response).to render_template :top_page
    end
  end

  describe "GET #search" do
    it "renders the :search template" do
      get :search
      expect(response).to render_template :search
    end
  end

end