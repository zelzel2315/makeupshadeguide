class AddShadeToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :shade, :string
  end
end
