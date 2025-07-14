class Service < ApplicationRecord
    has_many :orders
    has_many :bookings, through: :orders    
end
