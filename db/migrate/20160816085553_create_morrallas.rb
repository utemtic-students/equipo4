class CreateMorrallas < ActiveRecord::Migration
  def change
    create_table :morrallas do |t|
      t.integer :mount
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
