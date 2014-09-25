class AddDescriptionToMakeups < ActiveRecord::Migration
  def change
    add_column :makeups, :description, :text
  end
end
