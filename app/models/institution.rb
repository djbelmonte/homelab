class Institution < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["name", "address", "contact_number"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["users"]
  end
end
