class CreateMorrallas < ActiveRecord::Migration
  def change
    create_table :morrallas do |t|
<<<<<<< HEAD:db/migrate/20160814031704_create_morrallas.rb

      t.integer  :user_id,  null: false
      t.decimal  :mount,    null: false
=======
      t.integer :mount
      t.references :user, index: true, foreign_key: true
>>>>>>> solution:db/migrate/20160816085553_create_morrallas.rb

      t.timestamps null: false
    end
  end
end
