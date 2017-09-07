class CreateEducourses < ActiveRecord::Migration[5.1]
  def change
    create_table :educourses do |t|
      t.string :courseCode
      t.string :courseName
      t.integer :quizID

      t.timestamps
    end
  end
end
