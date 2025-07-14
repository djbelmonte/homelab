class AddInstitutionIdToUsers < ActiveRecord::Migration[8.0]
  def change
    add_reference :users, :institution, foreign_key: true
  end
end
