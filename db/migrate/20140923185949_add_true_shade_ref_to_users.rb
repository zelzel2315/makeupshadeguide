class AddTrueShadeRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :true_shade, index: true
  end
end
