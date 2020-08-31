require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each{|key, vaule|holiday_hash[:winter][key]<<supply}
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day]<<supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season]={holiday_name=>supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts"#{season.to_s.capitalize!}:"
    holiday.each do |name, supply|
      new_array = []
      array=name.to_s.split"array.each{|word|new_array<<word.capitalize!}"
      name=new_array.join("")
      supply=supply.join(",")
      puts"#{name}:#{supply}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each. do |season, holiday|
    holiday.each do |name, supply|
    if supply.include?("BBQ")
      array<<name
    end
    end
  end
  array
end
