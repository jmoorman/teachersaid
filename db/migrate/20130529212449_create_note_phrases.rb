class CreateNotePhrases < ActiveRecord::Migration
  def change
    create_table :note_phrases do |t|
      t.integer :note_id
      t.integer :phrase_id
      t.integer :position

      t.timestamps
    end
  end
end
