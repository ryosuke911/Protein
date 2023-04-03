class Post < ApplicationRecord
  belongs_to :account
  validates :name, presence: true
  validates :price, presence: true
  validates :protein, presence: true
end
