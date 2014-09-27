require 'rails_helper'

RSpec.describe Category, :type => :model do

  it "is invalid without a name" do
    category = Category.new
    expect(category).to_not be_valid
  end

  it "is invalid if name is blank" do
    category = Category.new(name: "")
    expect(category).to_not be_valid
  end

  it "is valid with a name" do
    category = Category.new(name: 'funny stuff')
    expect(category).to be_valid
  end

  it "is valid only if unique" do
    first_category = Category.create(name: "design")
    second_category = Category.create(name: "design")
    expect(first_category).to be_valid
    expect(second_category).to_not be_valid
  end
end
