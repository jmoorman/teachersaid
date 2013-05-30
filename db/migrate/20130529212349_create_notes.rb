class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :Name
      t.integer :StudentId

      t.timestamps
    end
  end
end
