class Declaracion < ActiveRecord::Base
	has_many :gasolinas, autosave: true
  accepts_nested_attributes_for :gasolinas
end
