class Issue < ActiveRecord::Base
  belongs_to :conference
  attr_accessible :issueattendee, :issuecontent, :issueid, :issuematerial, :issuesubmitter, :issuetitle, :issuetype
end
