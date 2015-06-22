class Creator < ActiveRecord::Base
  validates_length_of :name, in: 1..100

  validates_presence_of :name
end
