class Booking < ApplicationRecord
  belongs_to :user
  has_many :orders

  validates :title, :status, :time, :address, presence: true

  def booking_status_color
    case status.to_sym
    when :pending
      "orange"
    when :ongoing
      "yellow"
    when :processing
      "sky"
    when :done
      "green"
    else
      "slate"
    end
  end
end
