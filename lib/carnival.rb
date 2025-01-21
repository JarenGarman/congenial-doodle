# frozen_string_literal: true

# Create the carnival!
class Carnival
  attr_reader :duration, :rides

  def initialize(duration)
    @duration = duration
    @rides = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def most_popular_ride
    return if @rides.empty?

    @rides.max_by do |ride|
      ride.rider_log.values.sum
    end
  end

  def most_profitable_ride
    return if @rides.empty?

    @rides.max_by do |ride|
      ride.total_revenue
    end
  end

  def total_revenue
    @rides.sum do |ride|
      ride.total_revenue
    end
  end

  def summary

  end

  private

  def visitors_array
    visitors = @rides.map do |ride|
      ride.rider_log.keys
    end.uniq
    visitors.each_with_object([]) do |visitor, visitor_array|
      visitor_array << visitor_hash(visitor)
    end
  end

  def visitor_hash(visitor)
    favorite_ride = @rides.max_by do |ride|
      ride.rider_log[visitor] if ride.rider_log[visitor]
    end
    total_money_spent = @rides.sum do |ride|
      ride.rider_log[visitor] * ride.admission_fee if ride.rider_log[visitor]
    end
    { visitor: visitor, favorite_ride: favorite_ride, total_money_spent: total_money_spent }
  end
end
