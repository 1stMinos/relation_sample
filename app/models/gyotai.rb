class Gyotai < ActiveRecord::Base
	has_many :offices, through: :office_gyotais
end
