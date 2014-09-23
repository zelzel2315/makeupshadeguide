class AddTrueShadeRefToMakeups < ActiveRecord::Migration
  def change
    add_reference :makeups, :true_shade, index: true
  end
end
