class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.decimal :rating, precision: 3, scale: 2

      t.timestamps
    end
  end
end