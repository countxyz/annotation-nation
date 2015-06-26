class Creation < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :author, :title, :work

  validates_length_of :author, in: 1..100
  validates_length_of :title,  in: 1..100
  validates_length_of :work,   minimum: 1
end
