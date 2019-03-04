require 'json'
file = File.open("teset.json")
all_tasks = JSON.parse((file.read), {:symbolize_names => true})
file.close
#variable is a hash
#but each individual element is an array.
#initial loop through variable will only loop through each hash so we have to
#do an additional loop through each hash



days_tasks = {}

for element in all_tasks
  for key, value in element
    if key == :day
    days_tasks[value] = element
    element.delete(key)
    end
  end
end

days_tasks = days_tasks.sort.to_h
puts days_tasks

=begin

class Task
  attr_accessor :day, :place, :time, :duration

  def init(day, place, time, duration)
    @day = day
    @place = place
    @time = time
    @duration = duration
  end
end

class Task
  attr_accessor :day, :place, :time, :duration

  def init(day, place, time, duration)
    @day = day
    @place = place
    @time = time
    @duration = duration
  end

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
