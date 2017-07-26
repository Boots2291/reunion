require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test

  def test_it_exists
    activity = Activity.new("Brunch")

    assert_instance_of Activity, activity
  end

  def test_activity_has_a_name
    activity = Activity.new("Brunch")

    assert_equal "Brunch", activity.name
  end

  def test_activity_has_empty_hash_of_participants
    activity = Activity.new("Brunch")

    assert_equal ({}), activity.participants
    assert_equal Hash, activity.participants.class
    assert_equal 0, activity.participants.length
  end

  def test_activity_can_add_participants
    activity = Activity.new("Brunch")

    activity.add_participant("Jim", 20)

    assert_equal ({"Jim" => 20}), activity.participants
  end

  def test_activity_can_get_total_cost
    activity = Activity.new("Brunch")

    target = activity.total_cost

    assert_equal 20, target
  end

end

# > activity.total_cost
# # => 20
#
# > activity.add_participant("Joe", 40)
# > activity.participants
# => {"Jim" => 20, "Joe" => 40}