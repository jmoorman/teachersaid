class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Language
      t.integer :TeacherId

      t.timestamps
    end
  end
end
