class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|

      t.integer    :user_id,     null: false
      t.string     :linkFile,    null: false
      t.timestamps :date,        null: false
      t.integer    :state,       null: false
      t.integer    :paid,        null: false
      t.decimal    :mount,       null: false

      t.timestamps null: false
    end
  end
end
