class AddVerifiedToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :supports, :verified, :boolean, :default => false   
  end
end
