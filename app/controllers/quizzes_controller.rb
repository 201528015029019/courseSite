class QuizzesController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @quiz = @course.quizzes.new(params[:quiz])
    redirect_to @course if @quiz.save
  end
end
