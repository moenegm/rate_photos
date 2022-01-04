class AddPostIdToRatings < ActiveRecord::Migration[6.1]
  def change
    add_column :ratings, :post_id, :integer
  end
end
