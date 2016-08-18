class CreateJoinTableUsuariosMorrallas < ActiveRecord::Migration
  def change
    create_join_table :usuarios, :morrallas do |t|
      # t.index [:usuario_id, :morralla_id]
      # t.index [:morralla_id, :usuario_id]
    end
  end
end
