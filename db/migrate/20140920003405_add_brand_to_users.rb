class AddBrandToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :brand, :string
  end
end
