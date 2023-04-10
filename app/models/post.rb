class Post < ApplicationRecord
  belongs_to :account
  belongs_to :category
  validates :name, presence: true
  validates :price, numericality: true
  validates :protein, numericality: true
end
