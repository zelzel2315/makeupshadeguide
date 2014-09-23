class AddDescriptionToTrueShades < ActiveRecord::Migration
  def change
  	add_column :true_shades, :description, :string
  end
end
