class Service < ApplicationRecord
  has_many :orders
  has_many :bookings, through: :orders

  def self.ransackable_attributes(auth_object = nil)
    ["name", "price"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["bookings", "orders"]
  end
end
