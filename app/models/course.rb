class Course < ApplicationRecord
    has_many :cohorts
    has_many :students, through: :cohorts
end
