class Creation < ActiveRecord::Base
  validates_presence_of :creation, :title, :creator

  validates_length_of :creation, minimum: 1
  validates_length_of :creator,  in: 1..100
  validates_length_of :title,    in: 1..100
end
