require 'rails_helper'

RSpec.describe Post, :type => :model do
  let(:post) { FactoryGirl.build(:post) }

    it "is valid with a title, body, and type" do
      expect(post).to be_valid
    end

    it "is invalid without a title" do
      post.title = nil
      expect(post).to_not be_valid
    end

    it "is invalid without a body" do
      post.body = nil
      expect(post).to_not be_valid
    end

    it "is invalid without a category_id" do
      post.category_id = nil
      expect(post).to_not be_valid
    end
end
