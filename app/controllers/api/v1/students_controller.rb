class Api::V1::StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def create
    student = Student.create(student_params)
    render json: student
  end

  def update
    not_student = Student.find(params[:id])
    not_student.update(student_params)
    render json: not_student
  end

  def gold_team_rules
    puts "GOLD TEAM RULES"
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    render json: student
  end

  private

  def student_params
    params.require(:student).permit(:name)
  end
end
