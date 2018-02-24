class ChangePasswordCol < ActiveRecord::Migration[5.1]
  def change
  	rename_column :Users, :password, :password_hash
  end
end
