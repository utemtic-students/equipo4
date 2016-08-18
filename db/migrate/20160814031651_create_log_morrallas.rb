class CreateLogMorrallas < ActiveRecord::Migration
  def change
    create_table :log_morrallas do |t|

      t.integer    :user_id,      null: false
      t.integer    :user_admin_id,null: true
      t.decimal    :mount,        null: false
      t.integer    :paid,         null: false
      t.timestamps :date,         null: false

      t.timestamps null: false
    end
  end
end
