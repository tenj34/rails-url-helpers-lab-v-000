class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @students = Student.all
  end

  def set_student
    @student = Student.find(params[:id])
    @student.toggle!(:active) # toggle
    redirect_to student_path(@student)

  end

  private

end
