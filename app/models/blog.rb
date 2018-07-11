class Blog < ApplicationRecord
validates :title, :uniqueness => true, :presence => true
  belongs_to :user
  belongs_to :category
  has_many :posts
  has_many :comments, through: :posts
end
