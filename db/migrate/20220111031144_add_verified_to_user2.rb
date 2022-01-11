class AddVerifiedToUser2 < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :verified, :boolean, :default => false
    remove_column :supports, :verified
  end
end
