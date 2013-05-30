class CreateNotePhrases < ActiveRecord::Migration
  def change
    create_table :note_phrases do |t|
      t.integer :NoteId
      t.integer :PhraseId
      t.integer :Position

      t.timestamps
    end
  end
end
