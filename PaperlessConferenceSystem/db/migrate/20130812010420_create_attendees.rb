class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :name
      t.references :issue

      t.timestamps
    end
    add_index :attendees, :issue_id
  end
end
