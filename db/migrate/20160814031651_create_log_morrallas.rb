class CreateLogMorrallas < ActiveRecord::Migration
  def change
    create_table :log_morrallas do |t|

      t.integer    :userId,     null: false
      t.integer    :userAdminId,null: true
      t.decimal    :mount,      null: false
      t.integer    :paid,       null: false
      t.timestamps :date,       null: false

      t.timestamps null: false
    end
  end
end
