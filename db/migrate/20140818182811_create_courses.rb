class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :short_desc
      t.string :duration
      t.string :language
      t.integer :category_id

      t.timestamps
    end
  end
end
