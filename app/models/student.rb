class Student < ApplicationRecord
    has_many :student_cohorts
    has_many :cohorts, through: :student_cohorts

    def student_full_name
        "#{first_name} #{last_name}"
    end
end
