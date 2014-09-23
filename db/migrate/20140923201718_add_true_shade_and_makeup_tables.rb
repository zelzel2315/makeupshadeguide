class AddTrueShadeAndMakeupTables < ActiveRecord::Migration
  def change

    create_table :makeups do |t|
      t.string   :brand
      t.string   :product
      t.string   :shade
      t.datetime :created_at
      t.datetime :updated_at
      t.binary   :image
    end

  create_table :true_shades do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :name
      t.string   :description
  end
end

end
