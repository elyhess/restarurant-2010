class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    @open_for_lunch = true
  end

  def closing_time(time)
    close_time = opening_time.to_i + time
    return close_time.to_s + ":00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @open_for_lunch
  end


end
