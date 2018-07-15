class Category < ApplicationRecord
has_many :blogs
validates :name, :uniqueness => true, :presence => true

end
