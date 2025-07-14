class Booking < ApplicationRecord
  belongs_to :user
  has_many :orders

  validates :title, :status, :time, :address, presence: true
end
