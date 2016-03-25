class Gasolina < ActiveRecord::Base
	belongs_to :declaracion, autosave: true
  accepts_nested_attributes_for :declaracion
end
