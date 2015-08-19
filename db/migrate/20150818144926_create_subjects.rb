class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.binary  :uuid, comment:'A binary encoded UUID use HEX(uuid) to retrieve the original (minus dashes)', limit: 16
      t.string  :friendly_name, comment:'A user readable identifier for the subject', index: true
      t.integer :subject_type_id, comment:'References the event type'
      t.timestamps

      t.index :uuid, unique:true, length: 16
    end
  end
end