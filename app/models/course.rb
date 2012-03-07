class Course < ActiveRecord::Base
  belongs_to :location
  belongs_to :category
  belongs_to :subcategory
end
