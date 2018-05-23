class Teacher < ApplicationRecord
    has_many :teacher_cohorts
    has_many :cohorts, through: :teacher_cohorts

        def teacher_full_name
        "#{first_name} #{last_name}"
    end
end
