class Creation < ActiveRecord::Base
  belongs_to :creator

  validates_presence_of :creation, :title

  validates_length_of :creation, minimum: 1
  validates_length_of :title,    in: 1..100
end
