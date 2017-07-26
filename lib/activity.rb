require 'pry'
class Activity

  attr_reader :name,
              :participants

  def initialize(activity)
    @name = activity
    @participants = {}
  end

  def add_participant(name, cost)
    participants.store(name, cost)
  end

  def total_cost
    participants.values.sum
  end

end
