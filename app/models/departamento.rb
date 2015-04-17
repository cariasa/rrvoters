class Departamento < ActiveRecord::Base
	has_many :municipios
	has_many :barrio_colonia, :through => :municipios
end
