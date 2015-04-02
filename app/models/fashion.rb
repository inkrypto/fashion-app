class Fashion < ActiveRecord::Base
  validates_presence_of :dress
  validates_presence_of :shirt
end
