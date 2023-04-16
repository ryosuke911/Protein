class Category < ApplicationRecord
  has_many :posts
  belongs_to :account
  validates :name, presence: true
end
