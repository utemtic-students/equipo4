class Archivo < ActiveRecord::Base
	belongs_to :user

	validates  :archivo,
    presence: true
end
