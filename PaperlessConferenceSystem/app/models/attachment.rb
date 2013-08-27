class Attachment < ActiveRecord::Base
  belongs_to :issue
  attr_accessible :name,:file
  validates :file_file_name,presence: true
  has_attached_file :file,:url => "/Files/attachments/:id/:style/:basename.:extension",    
  :path => ":rails_root/public/Files/attachments/:basename.:extension"
end
