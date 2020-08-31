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
    puts "#{season.capitalize}:"
    holiday.each do |holiday, item|
      puts " #{holiday.to_s.split("_").map {|i| i.capitalize.join(" ")}}":
    end
end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.map. do |seasons, holiday|
    holiday.map do |holiday, item|
      holiday if item.include?("BBQ")
    end
  end.flatten
end

all_holidays_with_bbq
