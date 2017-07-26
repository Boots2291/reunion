require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test

  def test_reunion_exists
    reunion = Reunion.new("Denver")

    assert_instance_of Reunion, reunion
  end

end
# reunion = Reunion.new("Denver")
# # => #<Reunion:0x007fe4ca1defc8 ...>
#
# > reunion.name
# # => "Denver"
#
# > reunion.activities
# # => []
#
# > activity_1 = Activity.new("Brunch")
# # => #<Activity:0x007fe4ca1d9438 ...>
#
# > activity_1.add_participant("Jim", 20)
# > activity_1.add_participant("Joe", 40)
# > reunion.add_activity(activity_1)
# > reunion.activities
# # => [#<Activity:0x007fe4ca1d9438 ...>]