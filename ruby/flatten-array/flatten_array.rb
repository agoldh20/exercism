class FlattenArray
  attr_accessor :return_array

  def self.flatten(input)
    @return_array = []
    parse(input)
    @return_array
  end

  def self.parse(input)
    input.each do |element|
      next if element == nil
      if element.instance_of? Array
        parse(element)
      else
        @return_array << element
      end
    end  
  end

end