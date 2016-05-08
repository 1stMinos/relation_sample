class OfficeGyotai < ActiveRecord::Base
  belongs_to :office_id
  belongs_to :gyotai_id
end
