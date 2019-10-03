class Product < ApplicationRecord
  validates_presence_of :title, :content, :price
  belongs_to :category
end