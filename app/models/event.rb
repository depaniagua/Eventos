class Event < ApplicationRecord
    validates :nombre, presence: true 
    validates :categoria, presence: true
    validates :lugar, presence: true
    validates :direccion, presence: true
    validates :fecha_inicio, presence: true
    validates :fecha_fin, presence: true
    validates :modalidad, presence: true

    belongs_to :user
end
