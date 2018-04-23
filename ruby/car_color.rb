class Color
  :color
  def initialize(color)
    @color = color
  end
end

blue_car = Color.new('blue')
yellow_car = Color.new('yellow')
green_car1 = Color.new('green')
green_car2 = Color.new('green')

input = [blue_car, yellow_car, green_car1, green_car2]

expected_output = [
                   {blue: ['blue_car']},
                   {yellow: ['yellow_car']},
                   {green: ['green_car1', 'green_car2']}]

