class Municipio < ActiveRecord::Base
  belongs_to :departamento
  has_many :barrio_colonia
end
