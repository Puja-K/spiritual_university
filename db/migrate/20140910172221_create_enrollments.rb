class CreateEnrollments < ActiveRecord::Migration
  def change
  	create_table :enrollments, id: false do |t|
      t.belongs_to :user
      t.belongs_to :course
      t.date :enrollment_date
      t.date :completion_date
      t.integer :percentage_completion
      t.boolean :completed
		t.index [:user_id, :course_id]
       t.index [:course_id, :user_id]
      t.timestamps
    end
  end
end
