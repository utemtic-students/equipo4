class CreateLogMorrallas < ActiveRecord::Migration
  def change
    create_table :log_morrallas do |t|

      t.integer    :idUser,     null: false
      t.integer    :idUserAdmin,null: true
      t.decimal    :mount,      null: false
      t.integer    :paid,       null: false
      t.timestamps :date,       null: false

      t.timestamps null: false
    end
  end
end
