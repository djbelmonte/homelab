class ChangeUsernameToStringInUsers < ActiveRecord::Migration[8.0]
  def change
    change_column :users, :username, :string
  end
end
