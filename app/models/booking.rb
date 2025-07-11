class Booking < ApplicationRecord
  belongs_to :user

  validates :title, :status, :time, :address, presence: true
end
