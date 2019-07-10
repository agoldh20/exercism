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
    @rows.each_with_index do |row, index|
      row_max = 0
      col_min = @columns[0][0]
      row_max_position = nil
      col_min_position = nil
      row.each do |row_number|
        row_max = row_number
        row_max_position = row.find_index(row_number)
        @columns[index].each do |col_number|
          col_min = col_number if col_min >= col_number
          col_min_position = @columns[index].find_index(col_number)
        end
        puts "row_max: #{row_max}, col_min: #{col_min}"
        if row_max == col_min
          saddle_points << [row_max_position, col_min_position]
        end
      end
    end
    saddle_points
  end
end