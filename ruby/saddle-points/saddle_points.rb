class Matrix
  attr_accessor :matrix, :rows, :columns

  def initialize(string)
    @matrix = string.split("\n")
    @rows = []
    @columns = []
  end

  def convert
    @matrix.each do |row|
      @rows << row.split(" ").map! {|number| number.to_i}
    end
  end

  def rows
    convert
    @rows
  end
  
  def columns
    convert
    @rows[0].length.times {@columns << []}
    @rows.each do |row|
      index = 0
      row.each do |number|
        @columns[index] << number
        index += 1
      end
      index = 0
    end
    @columns
  end
  
  def saddle_points

  end
  
end