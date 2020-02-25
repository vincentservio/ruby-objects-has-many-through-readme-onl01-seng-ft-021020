class Meal
 
  attr_accessor :waiter, :customer, :total, :tip
 
  @@all = []
 
  def initialize(waiter, customer, total, tip=0)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @@all << self
  end
 
 def waiters
  meals.map do |meal|
    meal.waiter
  end
end

def meals
  Meal.all.select do |meal|
    meal.waiter == self #checking for waiter now
  end
end

  def self.all
    @@all
  end
end