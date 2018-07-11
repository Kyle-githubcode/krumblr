class User < ApplicationRecord
validates :name, :uniqueness => true, :presence => true
validates :email, :uniqueness => true, :presence => true
validates :password, :uniqueness => true, :presence => true
has_many :blogs
has_many :posts
has_many :comments
end
