class StudentsController < ApplicationController

  def index
    if params[:name]
      # students = Student.all.select { |s| s.last_name === params[:name].capitalize}
      students = Student.all.where(:last_name => params[:name].capitalize)
    else
      students = Student.all
    end
    render json: students
  end

  def show 
    student = Student.find(params[:id])
    render json: student
  end

end

#{ first_name: 'Vanessa', last_name: 'Kirby', grade: 85 }
