class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(time)
    close_time = opening_time.to_i + time
    return close_time.to_s + ":00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @opening_time.to_i < 12 == true
  end

  def menu_dish_names
    menu_items = []
    @dishes.each do |dish|
      menu_items << dish.upcase
    end
    menu_items
  end

  def announce_closing_time(time)
    announce_time = opening_time.to_i + time
    if announce_time > 12
      "#{name} will be closing at #{announce_time - 12}:00PM"
    else
      "#{name} will be closing at #{announce_time}:00AM"
    end
  end
end
