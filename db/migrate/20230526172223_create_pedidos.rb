class CreatePedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :pedidos do |t|
      t.string :tabla
      t.string :trucks
      t.string :ruedas
      t.string :rulemanes
      t.string :lija
      t.string :hardware
      t.string :nombre

      t.timestamps
    end
  end
end
