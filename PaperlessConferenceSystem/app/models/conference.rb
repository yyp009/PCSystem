class Conference < ActiveRecord::Base
  has_many :issues,:dependent => :destroy
  attr_accessible :addr, :datet, :topic
  validates :addr,presence: true
  validates :datet,presence: true
  validates :topic,presence: true, uniqueness: true
  
end
