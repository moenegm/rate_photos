class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :iso
      t.string :shutter_speed
      t.string :appature
      t.string :composition
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
