class PhoneNumber
  def self.clean(phone_number)
    clean_number = phone_number.gsub(/[^0-9]/,"")
    clean_number.slice!(0) if clean_number[0] == "1"

    if clean_number.length == 10 && clean_number[3].match(/[2-9]/)
      clean_number
    else
      nil
    end
  end
end

module BookKeeping
  VERSION = 2
end