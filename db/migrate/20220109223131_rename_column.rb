class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :supports, :type, :support_type
  end
end
