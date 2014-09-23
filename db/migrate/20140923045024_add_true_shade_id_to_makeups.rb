class AddTrueShadeIdToMakeups < ActiveRecord::Migration
  def change
  	add_column :makeups, :true_shade_id, :string
  end
end
