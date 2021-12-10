class AddNameToUser < ActiveRecord::Migration[6.1]
  def change
     add_column :users, :part_number, :string 
     add_column :users, :first_name, :string 
     add_column :users, :last_name, :string 
     add_column :users, :birthday, :date 
     add_column :users, :age, :integer 
  end
end
