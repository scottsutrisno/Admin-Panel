class StudentsController < ApplicationController
  # before_action :require_login, only: [:new, :edit, :create, :destroy]
  def index
    @students = Student.all
  end

  def show
    @students = Student.find(params[:id])
  end

  def new
    @students = Student.new
    @cohorts = Cohort.all

  end

  def edit
    @students = Student.find(params[:id])
    @cohortss = Cohort.all
  end

  def create
    @students = Student.new(student_params)

    if @students.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end

  end

  def update
    @students = Student.find(params[:id])

   if @students.update_attributes(student_params)
      redirect_to :action => 'show', :id => @students
   else
      render :action => 'edit'
   end

  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  def add_cohort
    student_cohort = StudentCohort.new(
      student_id: params[:student_id],
      cohort_id: params[:cohort_id]
    )

    if student_cohort.save
      flash[:info] = "Everything good"
    else
      flash[:error] = "Everything bad"
    end

    redirect_to edit_student_path(params[:student_id])
  end


  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :education)
  end
end