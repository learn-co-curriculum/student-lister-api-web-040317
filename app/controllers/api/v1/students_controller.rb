class Api::V1::StudentsController < ApplicationController
  before_action :authorize_user!

  def index
    students = Student.all
    render json: students
  end

  def create
    # parmas {student: {name: 'Fido Jones'}}
    student = Student.create(student_params)
    render json: student # {id: 10, name: 'Fido Jones', }
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    render json: student
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
