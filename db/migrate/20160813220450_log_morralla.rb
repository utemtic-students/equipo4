class LogMorralla < ActiveRecord::Migration
  def change
    create_table :logMorralla do |t|
      t.integer    :idUser,     null: false
      t.integer    :idUserAdmin,null: true
      t.decimal    :mount,      null: false
      t.integer    :type,       null: false
      t.timestamps :date,       null: false
    end
  end
end
