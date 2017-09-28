require_relative 'person'

class Professor < Person

  def initialize(first_name, last_name, field_of_expertise)
    super(first_name, last_name)
    @field_of_expertise = field_of_expertise
  end

  def full_name
    "Prof. #{ super }"
  end

  def teach(cohort)
    cohort.each { |student| student.learn }
  end

  def slack(cohort)
    cohort.each { |student| student.slack }
  end

end
