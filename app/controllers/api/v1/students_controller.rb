class Api::V1::StudentsController < ApplicationController
  before_action :authorize_user!

  def index
    students = Student.all
    render json: students
  end

  def gene_gene
    puts "Gene_Gene_Gene_Gene_Gene_Gene_Gene_Gene_Gene_Gene_Gene_Gene!!!!!!!!!!!!!!!!"
  end

  def create
    # parmas {student: {name: 'Fido Jones'}}
    student = Student.create(student_params)
    render json: student # {id: 10, name: 'Fido Jones', }
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
