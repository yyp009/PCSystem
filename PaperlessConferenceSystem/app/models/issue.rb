class Issue < ActiveRecord::Base
  belongs_to :conference
  has_many :attendees
  attr_accessible :issuetimecost, :issuecontent, :issueid, :issueisclassified, :issuesubmitter, :issuetitle, :issuetype,:attendees_attributes,:attachments_attributes

  accepts_nested_attributes_for :attendees,:allow_destroy => true,:reject_if =>proc{|attrs|attrs.all?{|k,v|v.blank?}}
  has_many :attachments
  accepts_nested_attributes_for :attachments,:allow_destroy => true,:reject_if =>proc{|attrs|attrs.all?{|k,v|v.blank?}}

end
