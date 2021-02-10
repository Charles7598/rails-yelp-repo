class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: {in: %w(chinese italian japanese french belgian), message: "This is not a valid category !"}
  validates :name, :category, :address, presence: true
end
