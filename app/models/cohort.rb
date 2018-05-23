class Cohort < ApplicationRecord
belongs_to :course
has_many :teacher_cohorts
has_many :teachers, through: :teacher_cohorts
has_many :student_cohorts
has_many :students, through: :student_cohorts
end
