def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |a_holiday, supplies|
      a_holiday = a_holiday.to_s
      if a_holiday.include? "_"
        a_holiday = a_holiday.split("_")
        temp_array = []
          a_holiday.each do |temp_holi|
            temp_holi = temp_holi.capitalize
            temp_array = temp_array.push(temp_holi)
          end
        a_holiday = temp_array.join(" ")
      else
        a_holiday = a_holiday.capitalize
      end
      supplies_array = []
      supplies.each do |each_supply|
        if each_supply.include? "_"
          each_supply = each_supply.split("_")
          each_supply = each_supply.join(" ")
          supplies_array.push(each_supply)
        else
          supplies_array.push(each_supply)
        end
      end
      puts "  #{a_holiday}: #{supplies_array.join(", ")}"
    end
  end
  
end