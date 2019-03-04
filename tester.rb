require './month.rb'  #Month.class
require 'json'
#determining current
current_month = Month.new(Time.new.month)
current_day = Time.new.day
puts "Today's date is #{current_month.what_month_is_it(Time.new.month)}, #{current_day}."
#puts current_month.month_hash

file = File.open("teset.json")
all_tasks = JSON.parse((file.read), {:symbolize_names => true})
file.close
days_tasks = {"1" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "2" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}}
puts all_tasks

puts "new"


for element in all_tasks
  for key, value in element
    if key == :day
      #puts "match"
      for key1, value1 in days_tasks
        if key1 == element[:day]
          #puts "another match"
          for key2, value2 in value1
            if key2 == element[:time].to_sym
              #puts "super match found"
              if value2 == "free_slot"
                #puts "free slot"
                value1[key2] = {name: element[:name], duration: element[:duration]}
              else
                #puts "conflict error"
              end
            end
          end
        else
          #puts "this day doesn't exist yet"
            end
          end
        end
      end
    end

#puts days_tasks

=begin
       end
        #all_tasks[element[:day]] = {name: element[:name], time: element[:time], duration: element[:duration]}
      end
    end
  end
end

puts "new"


puts days_tasks

=begin
    if key == [:day]
      for key1, value1 in days_tasks
        if batch[:day] == key1
          puts "already exists"
        else
          days_tasks[batch[:day]] = {name: batch[:name], time: batch[:time], duration: batch[duration]}
        end
      end
    end
  end
end
puts days_tasks

=begin
  puts batch.class
    for task in days_tasks
      if !task[:day].exists?
        batch[:day] = batch[:day].except
        days_tasks[:day] += batch
      end
    end
  end


puts days_tasks

=end
