class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true
      t.references :makeup, index: true
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end
