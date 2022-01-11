class AddStatusToSupports < ActiveRecord::Migration[6.1]
  def change
    add_column :supports, :status, :integer
  end
end
