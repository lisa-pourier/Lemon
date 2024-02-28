class Offer < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :company, :description, :price, :location, presence: true
end
