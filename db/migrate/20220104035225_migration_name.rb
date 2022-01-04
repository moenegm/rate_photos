class MigrationName < ActiveRecord::Migration[6.1]
  def change
    change_column :ratings, :rating, :decimal, :precision => 3, :scale => 2 
  end
end
