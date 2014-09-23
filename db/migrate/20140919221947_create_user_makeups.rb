class CreateUserMakeups < ActiveRecord::Migration
  def change
    create_table :user_makeups do |t|
      t.references :makeup, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
