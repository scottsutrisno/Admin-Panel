class StudentCohortsController < ApplicationController
  def edit
    @student_cohorts = StudentCohort.find(params[:id])
  end

  def update
    @student_cohorts = StudentCohort.find(params[:id])

   if @student_cohorts.update_attributes(student_cohort_params)
      redirect_to cohorts_url
   else
      render :action => 'edit'
   end
  end

  def create
    @student_cohorts = StudentCohort.new(student_cohort_params)

    if @student_cohorts.save
      redirect_to cohorts_url
    else
      render :action => 'new'
    end
  end

  def destroy
    StudentCohort.find(params[:id]).destroy
    redirect_to cohorts_url
  end

private

  def student_cohort_params
    params.require(:student_cohort).permit(:student_id, :cohort_id)
  end


end