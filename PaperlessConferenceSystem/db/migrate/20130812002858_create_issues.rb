class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :issueid
      t.string :issuesubmitter
      t.string :issuetitle
      t.text :issuecontent
      t.string :issuetype
      t.integer :issuetimecost
      t.string :issueisclassified
      t.references :conference

      t.timestamps
    end
    add_index :issues, :conference_id
  end
end
