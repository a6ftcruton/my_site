class Category < ActiveRecord::Base
  has_many :posts
  before_save { self.name = name.downcase }
  validates :name, presence: true, uniqueness: true
end
