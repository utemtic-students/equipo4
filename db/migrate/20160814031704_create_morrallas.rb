class CreateMorrallas < ActiveRecord::Migration
  def change
    create_table :morrallas do |t|

      t.integer  :user_id,  null: false
      t.decimal  :mount,    null: false

      t.timestamps null: false
    end
  end
end
