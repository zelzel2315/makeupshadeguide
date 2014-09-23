class RemoveTrueShadeFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :true_shade
  end
end
