class Changestatus < ActiveRecord::Migration[6.1]
  def change
    change_column :supports, :status, :string, :default => "Pending"
  end
end
