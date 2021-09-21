class StudentsController < ApplicationController

  def index
    
    # byebug
    students =  if params[:name]
                  Student.where("first_name = ? OR last_name = ?", params[:name].capitalize, params[:name].capitalize)
                else  
                  Student.all
                end    
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
end
