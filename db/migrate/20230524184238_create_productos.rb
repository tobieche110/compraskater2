class CreateProductos < ActiveRecord::Migration[7.0]
  def change
    create_table :productos, id: :bigint do |t|
      t.string :nombre
      t.string :precio
      t.string :marca
      t.string :tipo
      t.string :img

      t.timestamps
    end
  end
end
