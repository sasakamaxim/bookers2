class AddUserIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user, :integer
  end
end
