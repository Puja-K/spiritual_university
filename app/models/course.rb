class Course < ActiveRecord::Base
	belongs_to :category
	has_one :course_detail
	has_and_belongs_to_many :users
	validates :category_id, presence: true
	validates_presence_of :name
	validates_presence_of :short_desc
	validates_presence_of :duration
end
