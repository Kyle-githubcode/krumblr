class User < ApplicationRecord
validates :name, :uniqueness => true, :presence => true
validates :email, :uniqueness => true, :presence => true
has_many :blogs
has_many :posts
has_many :comments
has_secure_password
end
