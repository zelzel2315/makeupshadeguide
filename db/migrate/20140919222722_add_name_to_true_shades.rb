class AddNameToTrueShades < ActiveRecord::Migration
  def change
  	add_column :true_shades, :name, :string
  end
end
