class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|

      t.integer    :userId,     null: false
      t.string     :linkFile,   null: false
      t.timestamps :date,       null: false
      t.integer    :state,      null: false
      t.integer    :paid,       null: false
      t.decimal    :Mount,      null: false

      t.timestamps null: false
    end
  end
end
