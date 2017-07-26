require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test

  def test_reunion_exists
    reunion = Reunion.new("Denver")

    assert_instance_of Reunion, reunion
  end

  def test_reunion_has_a_name
    reunion = Reunion.new("Denver")

    assert_equal "Denver", reunion.name
  end

  def test_reunion_initializes_with_an_empty_array_of_activites
    reunion = Reunion.new("Denver")

    assert_equal [], reunion.activities
  end

  def test_reunion_can_add_activities
    reunion = Reunion.new("Denver")
    activity_1 = Activity.new("Brunch")
    activity_1.add_participant("Jim", 20)
    activity_1.add_participant("Joe", 40)

    reunion.add_activity(activity_1)
    target = reunion.activities

    assert_equal [activity_1], target
  end

end