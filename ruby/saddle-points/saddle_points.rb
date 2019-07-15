class Matrix
  attr_accessor :matrix, :rows, :columns

  def initialize(string)
    @matrix = string.split("\n")
    @rows = []
    @columns = []
  end

  def rows
    @matrix.each do |row|
      @rows << row.split(" ").map! {|number| number.to_i}
    end
    @rows
  end
  
  def columns
    rows
    @rows[0].length.times {@columns << []}
    @rows.each do |row|
      row.each_with_index do |number, index|
        @columns[index] << number
      end
    end
    @columns
  end
  
  def saddle_points
    saddle_points = []
    columns
    @rows.each do |row|
      row_max = 0
      row.each_with_index do |number, index|
        row_max = number if number >= row_max
        row_max_position = index
        puts "row_max: #{row_max} row_max_position: #{row_max_position}"
      end
    end
  end
end