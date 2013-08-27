class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :name
      t.references :issue

      t.timestamps
    end
    add_index :attachments, :issue_id
  end
end
