class Book < ApplicationRecord
  has_one_attached :image
  has_one_attached :file
  has_many :tags, through: :books_tags
end
