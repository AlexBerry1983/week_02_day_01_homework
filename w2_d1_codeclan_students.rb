class CodeClanStudent

  def initialize(name, cohort, favourite_programming_language)
    @name = name
    @cohort = cohort
    @favourite_programming_language = favourite_programming_language
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort_number)
    @cohort = new_cohort_number
  end

  def student_can_talk
    return "I can talk!"
  end

  def favourite_programming_language
    return "I love #{@favourite_programming_language}"
  end
end