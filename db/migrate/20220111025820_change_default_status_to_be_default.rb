class ChangeDefaultStatusToBeDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default :supports, :status, from: nil, to: "pending"
  end
end
