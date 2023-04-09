class Post < ApplicationRecord
  belongs_to :account
  belongs_to :category
  validates :name, presence: true
  validates :price, presence: true
  validates :protein, presence: true
end
