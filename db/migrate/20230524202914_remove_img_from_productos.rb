class RemoveImgFromProductos < ActiveRecord::Migration[7.0]
  def change
    remove_column :productos, :img, :string
    add_column :productos, :img, :attachment
  end
end
