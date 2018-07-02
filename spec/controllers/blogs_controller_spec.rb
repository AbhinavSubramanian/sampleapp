require 'rails_helper'

RSpec.describe BlogsController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to be_success
    end
  end

 
  describe "GET #show" do
    it "returns http success" do
      blog = Blog.create(title: 'Some title', subtitle: 'Some Subtitle', body: 'some body')
      get :show, params: {id: blog.to_param}
      expect(response).to have_http_status(:success)
    end

 describe "GET #edit" do
    it "returns http success" do
      blog = Blog.create(title: 'Some title', subtitle: 'Some Subtitle', body: 'some body')
      get :edit, params: {id: blog.to_param}
      expect(response).to be_success
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      blog = Blog.create(title: 'Some title', subtitle: 'Some Subtitle', body: 'some body')
      get :destroy, params: {id: blog.to_param}
      expect(response).to redirect_to blogs_url
    end
  end


  end
end
