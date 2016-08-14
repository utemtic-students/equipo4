class Morralla < ActiveRecord::Migration
  def change
    create_table :morralla do |t|
      t.integer  :idUser,  null: false
      t.decimal  :mount,   null: false
    end
  end
end
