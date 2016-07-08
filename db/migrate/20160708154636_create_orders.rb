class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :usuario
    	t.string :carrera
    	t.string :archivo
    	t.datetime :fecha
    	t.float :monto
    	t.string :pago
    	t.string :estado
    	
      t.timestamps null: false
    end
  end
end
