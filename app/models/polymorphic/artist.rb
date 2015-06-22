class Artist < ActiveRecord::Base
  belongs_to :artistable, polymorphic: true

  validates_length_of :name, in: 1..100

  validates_presence_of :name
end
