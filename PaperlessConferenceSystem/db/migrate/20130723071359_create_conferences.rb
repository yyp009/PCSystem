class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :topic
      t.datetime :datet
      t.text :addr

      t.timestamps
    end
  end
end
