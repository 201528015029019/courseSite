class Course < ActiveRecord::Base
	validates :title, :presence => true, :uniqueness => true
	validates :content, :presence => true

	has_many :quizzes
end