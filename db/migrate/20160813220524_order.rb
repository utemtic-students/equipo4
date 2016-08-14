class Order < ActiveRecord::Migration
  def change
    create_table :order do |t|
      t.integer    :idUser,     null: false
      t.string     :linkFile,   null: false
      t.timestamps :date,       null: false
      t.integer    :state,      null: false
      t.integer    :type,       null: false
      t.decimal    :Mount,      null: false
    end
  end
end
