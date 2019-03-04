require 'json'
file = File.open("teset.json")
all_tasks = JSON.parse((file.read), {:symbolize_names => true})
file.close
days_tasks = {"1" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "2" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}}
puts all_tasks

puts "new"


for element in all_tasks
  for key, value in element
    if key == :day
      puts "match"
      for key1, value1 in days_tasks
        if key1 == element[:day]
          puts "another match"
          for key2, value2 in value1
            if key2 == element[:time].to_sym
              puts "super match found"
              if value2 == "free_slot"
                puts "free slot"
                value1[key2] = {name: element[:name], duration: element[:duration]}
              else
                puts "conflict error"
              end
            end
          end
        else
          puts "this day doesn't exist yet"
        #  days_tasks[element[:day]] = "foo"
        #  days_tasks[element[:day]] = {morning: "free_slot", noon: "free_slot", night: "free_slot"}
        #  for time, timeslot in days_tasks[element[:day]]
        #    if time == element[:time].to_sym
        #      if timeslot == "free_slot"
        #        days_tasks[element[:day[time]]] = {name: element[:name], duration: element[:duration]}
        #      end
            end
          end
        end
      end
    end

puts days_tasks

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


class Month
  def initialize(month)
    @month = month
  end

  def days_in_month(month)
    case month
    when :january
      31
    when :february
      28
    when :march
      31
    when :april
      30
    when :may
      31
    when :june
      30
    when :july
      31
    when :august
      31
    when :september
      30
    when :october
      31
    when :novemeber
      30
    when :december
      31
    end
  end

  def create_month_hash(days_in_month)
  months_tasks = {"1" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "2" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "3" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "4" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "5" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "6" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "7" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "8" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "9" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "10" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "11" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "12" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "13" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "14" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "15" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "16" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "17" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "18" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "19" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "20" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "21" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "22" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "23" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "24" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "25" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "26" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "27" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "28" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "29" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "30" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "31" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, }

  for key, value in months_tasks
    if key.to_i > days_in_month
      months_tasks.delete(key)
      end
    end
    return months_tasks
  end
end
