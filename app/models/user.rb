class User < ActiveRecord::Base
  
	has_many :enrollments
	has_many :courses, through: :enrollments
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   validates :full_name, presence: true

end
