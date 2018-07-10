class ETL
  def self.transform(old_data)
    return_hash = {}

    old_data.each do |key, value|
      value.each { |element| return_hash[element.downcase] = key }
    end
    return_hash.sort.to_h
  end
end

module BookKeeping
  VERSION = 1  
end