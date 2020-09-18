class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  t.string :name
  t.string :style
end
