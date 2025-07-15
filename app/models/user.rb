class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy

  belongs_to :institution, optional: true

  def self.ransackable_attributes(auth_object = nil)
    ["name", "email"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["bookings", "institution"]
  end
end
