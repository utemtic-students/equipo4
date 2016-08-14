class CreateLogPrints < ActiveRecord::Migration
  def change
    create_table :log_prints do |t|

      t.timestamps :dateOrder,  null: false
      t.integer    :state,      null: false
      t.integer    :typeOrder,  null: false
      t.integer    :idMount,    null: false

      t.timestamps null: false
    end
  end
end
