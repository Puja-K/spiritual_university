class Category < ActiveRecord::Base
	has_many :courses, dependent: :destroy #delete all courses if the category is deleted
	validates_presence_of :name
	validates_presence_of :description
end
