class AddOwnsToUserMakeups < ActiveRecord::Migration
  def change
  	add_column :user_makeups, :owns, :boolean
  end
end
