class Waiter
 
  attr_accessor :name, :yrs_experience
 
  @@all = []
 
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end
 
  def self.all
    @@all
  end
 
 def meals
  Meal.all.select do |meal|
    meal.waiter == self #checking for waiter now
  end
end

end