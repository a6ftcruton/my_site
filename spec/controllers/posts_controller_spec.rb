require 'rails_helper'

RSpec.describe PostsController, :type => :controller do
  # let(:valid_attributes) do
  #   Post.create(title: 'newish', body:'great bod', category_id: 1)
  # end

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "renders the :index template"
  end


  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "assigns a new Post to @post"
    it "renders the :new template"
  end

  describe "GET edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end

    it "assigns the request post to @post"
    it "renders the :edit template"
  end

  describe "GET show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end

    it "assigns the requested post to @post" do
      expect(assigns(:post)).to eq post
    end

    it "renders the :show template" do
      post = Post.create(:post)
      get :show, id: post
      expect(response).to render_template :show
    end

  end

  # describe "POST create" do
  #   context "with valid attributes" do
  #     it "saves the new post into the database"
  #     it "redirects to the post's page"
  #     it "displays a flash 'success' message"
  #   end
  #
  #   context "with invalid attributes" do
  #     it "does not save the new post in the database"
  #     it "re-renders the :new template"
  #   end
  # end
  #
  # describe "PATCH update" do
  #   context "with valid attributes" do
  #     it "updates the post in the database"
  #     it "redirects to the post"
  #   end
  #
  #   context "with invalid attributes" do
  #     it "does not update the post"
  #     it "re-renders the edit template"
  #   end
  # end
  #
  # describe "DELETE destroy" do
  #   it "deletes the post form the database"
  #   it "redirects to users#index"
  # end
  #
end
