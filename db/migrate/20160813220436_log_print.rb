class LogPrint < ActiveRecord::Migration
  def change
    create_table :logPrint do |t|
      t.timestamps :dateOrder,  null: false
      t.integer    :state,      null: false
      t.integer    :typeOrder,  null: false
      t.integer    :idMount,    null: false
    end
  end
end
