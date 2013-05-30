class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.integer :CategoryId
      t.string :English
      t.string :Spanish
      t.string :Chinese

      t.timestamps
    end
  end
end
