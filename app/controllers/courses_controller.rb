class CoursesController < ApplicationController
  # before_action :require_login, only: [:new, :edit, :create, :destroy]
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
    @cohorts = Cohort.all
  end

  def edit
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end

  end

  def update
    @course = Course.find(params[:id])

   if @course.update_attributes(course_params)
      redirect_to :action => 'index', :id => @course
   else
      render :action => 'edit'
   end
  end

  def destroy
    Course.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private

  def course_params
    params.require(:course).permit(:name, :hours)
  end
end