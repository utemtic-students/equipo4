class CreateArchivos < ActiveRecord::Migration
  def change
    create_table :archivos do |t|

       t.integer :user_id,              null: false
      t.timestamps null: false
    end
  end
end
