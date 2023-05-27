json.extract! pedido, :id, :tabla, :trucks, :ruedas, :rulemanes, :lija, :hardware, :nombre, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
