class Producto < ApplicationRecord

    validates :nombre, presence: true
    validates :precio, presence: true
    validates :marca, presence: true
    validates :tipo, presence: true
    validates :img, presence: true

    has_one_attached :img
    
end
