class BarrioColonium < ActiveRecord::Base
  belongs_to :municipio
  has_many :personas
end
