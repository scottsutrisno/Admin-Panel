class TeachersController < ApplicationController
  # before_action :require_login, only: [:new, :edit, :create, :destroy]
  def index
    @teachers = Teacher.all
  end

  def show
    @teachers = Teacher.find(params[:id])
  end

  def new
    @teachers = Teacher.new
  end

  def edit
    @teachers = Teacher.find(params[:id])
  end

  def create
    @teachers = Teacher.new(teacher_params)

    if @teachers.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end

  end

  def update
    @teachers = Teacher.find(params[:id])

   if @teachers.update_attributes(teacher_params)
      redirect_to :action => 'show', :id => @teachers
   else
      render :action => 'edit'
   end
  end

  def destroy
    Teacher.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :age, :education, :salary)
  end
end