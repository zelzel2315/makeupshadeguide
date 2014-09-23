class RemoveTrueShadeIdFromMakeups < ActiveRecord::Migration
  def change
  	remove_column :makeups, :true_shade_id
  end
end
