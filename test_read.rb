require 'json'
file = File.open("teset.json")
all_tasks = JSON.parse((file.read), {:symbolize_names => true})
file.close
#variable is a hash
#but each individual element is an array.
#initial loop through variable will only loop through each hash so we have to
#do an additional loop through each hash

class Task
  attr_accessor :name, :day, :time, :duration

  def initialize(day, name, time, duration)
    @day = day
    @name = name
    @time = time
    @duration = duration
  end

  def show_all
    puts "Name: #{name}, day: #{day}, time: #{time}, duration: #{duration}."
  end
end
#at the moment i've created an inital loop through the json file
#what this means is that once we save data externally we can read it again
#and have it saved for the future.

#i've created an empty hash
days_tasks = []
#we loop through the file that has been read
for element in all_tasks
  new_task = Task.new(element[:day], element[:name], element[:time], element[:duration])
  puts new_task.show_all
end
#then the hash is sorted by its key, in this case it is by day indexed at 0
days_tasks = days_tasks.sort.to_h
puts days_tasks

for key, value in days_tasks

end






=begin

  class MonthsTasks
    attr_accessor :month, :months_tasks, :days_tasks

    def initialize(month)
      @month = month
      @@months_tasks = [] #new month. new empty array that is available to child classes
      @@days_tasks = Hash.new
    end
  end

  class DayTasks < MonthsTasks
    attr_accessor :days_tasks
    def initialize(name, place, time, length)
      @@days_tasks[name] = {location: place, time: time, duration: length}
    end

    def add_task_to_day(day)
      month.push(@days_tasks)
    end
  end

=end
