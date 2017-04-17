require('minitest/autorun')
require('minitest/rg')
require_relative('./w2_d1_codeclan_students')

class TestCodeClanStudent < MiniTest::Test

  def setup
    @student = CodeClanStudent.new("Alex", 12, "Ruby")
  end

  def test_student_correct_class
    assert_kind_of(CodeClanStudent, @student)
  end

  def test_get_name
    assert_equal("Alex", @student.get_name)
  end

  def test_get_cohort
    assert_equal(12, @student.get_cohort)
  end

  def test_set_name
    @student = CodeClanStudent.new("Paul", 12, "Java")
    @student.set_name("Johnny")
    assert_equal("Johnny", @student.get_name)
  end

  def test_set_cohort
    @student = CodeClanStudent.new("Paul", 12, "Ruby")
    @student.set_cohort(11)
    assert_equal(11, @student.get_cohort)
  end

  def test_student_can_talk
    @student = CodeClanStudent.new("Paul", 12, "Java")
    assert_equal("I can talk!", @student.student_can_talk)
  end 

  def test_favourite_language
    assert_equal("I love Ruby", @student.favourite_programming_language)
  end

  def test_favourite_language_again
    @student1 = CodeClanStudent.new("Charlie", 12, "Java")
    assert_equal("I love Java", @student1.favourite_programming_language)
  end

end