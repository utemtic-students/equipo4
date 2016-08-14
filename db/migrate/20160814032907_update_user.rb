class UpdateUser < ActiveRecord::Migration
  def change
    add_column :users, :career,     :string
    add_column :users, :grade,      :string
    add_column :users, :imgProfile, :string
    add_column :users, :status,     :string
    add_column :users, :rol,        :string
    add_column :users, :sex,        :string

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true

  end
end
