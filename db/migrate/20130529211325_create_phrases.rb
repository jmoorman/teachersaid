class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.integer :category_id
      t.string :english
      t.string :spanish
      t.string :chinese

      t.timestamps
    end
  end
end
