class AddNameUser < ActiveRecord::Migration
  def change
  	 add_column :users, :named, :string
  end
end
