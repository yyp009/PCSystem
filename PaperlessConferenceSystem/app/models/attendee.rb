class Attendee < ActiveRecord::Base
  belongs_to :issue
  attr_accessible :name
  validates :name,presence: true, uniqueness: true
end
