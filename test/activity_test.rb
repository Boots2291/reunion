require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

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

    assert_equal {}, activity.participants
  end

end

# activity.participants
# # => {}
#
# > activity.add_participant("Jim", 20)
# > activity.participants
# # => {"Jim" => 20}
#
# > activity.total_cost
# # => 20
#
# > activity.add_participant("Joe", 40)
# > activity.participants
# => {"Jim" => 20, "Joe" => 40}