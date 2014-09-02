class CreateCourseDetails < ActiveRecord::Migration
  def change
    create_table :course_details do |t|
      t.text :course_description
      t.text :syllabus
      t.text :recommended_background
      t.text :course_format
      t.integer :course_id

      t.timestamps
    end
  end
end
