class Post < ApplicationRecord
validates :content, :presence => true
  belongs_to :blog
  belongs_to :user
  has_many :comments
end
