class AddUserIdTosupport < ActiveRecord::Migration[7.0]
  def change
    add_reference :supports, :user, foreign_key: true
  end
end
