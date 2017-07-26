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
    activity.add_participant("Jim", 20)

    target = activity.total_cost

    assert_equal 20, target
  end

  def test_activity_can_have_multiple_participants
    activity = Activity.new("Brunch")
    activity.add_participant("Jim", 20)
    activity.add_participant("Joe", 40)

    target = {"Jim" => 20, "Joe" => 40}

    assert_equal target, activity.participants
  end

  def test_activity_can_sum_multiple_costs
    activity = Activity.new("Brunch")
    activity.add_participant("Jim", 20)
    activity.add_participant("Joe", 40)

    assert_equal 60, activity.total_cost
  end

  def test_activity_total_cost_can_be_split
    activity = Activity.new("Brunch")
    activity.add_participant("Jim", 20)
    activity.add_participant("Joe", 40)

    target = activity.split

    assert_equal 30, target
  end
end


#
# > activity.split
# # => 30
#
# > activity.owed
# # => {"Jim" => 10, "Joe" => -10}