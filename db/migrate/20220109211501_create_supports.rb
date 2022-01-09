class CreateSupports < ActiveRecord::Migration[6.1]
  def change
    create_table :supports do |t|
      t.string :type
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
