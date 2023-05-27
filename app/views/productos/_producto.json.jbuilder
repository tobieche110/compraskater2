json.extract! producto, :id, :nombre, :precio, :marca, :tipo, :img, :created_at, :updated_at
json.url producto_url(producto, format: :json)
