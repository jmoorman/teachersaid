class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.integer :student_id

      t.timestamps
    end
  end
end
