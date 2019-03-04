class Month
  attr_accessor :days_in_month, :month_hash
  def initialize(month)
    @days_in_month = days_in_month(month) #march will be 31 days
    @month_hash = create_month_hash(@days_in_month)
  end

  def days_in_month(month)
    case month
    when 1
      31
    when 2
      28
    when 3
      31
    when 4
      30
    when 5
      31
    when 6
      30
    when 7
      31
    when 8
      31
    when 9
      30
    when 10
      31
    when 11
      30
    when 12
      31
    end
  end

  def create_month_hash(days_in_month)
  months_tasks = {"1" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "2" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "3" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "4" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "5" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "6" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "7" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "8" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "9" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "10" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "11" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "12" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "13" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "14" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "15" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "16" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "17" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "18" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "19" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "20" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "21" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "22" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "23" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "24" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "25" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "26" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "27" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "28" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "29" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "30" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, "31" => {morning: "free_slot", noon: "free_slot", night: "free_slot"}, }

  #for key, value in months_tasks
  #  if key.to_i > days_in_month
  #    months_tasks.delete(key)
  #    end
  #  end
  #  return months_tasks
  end

  def what_month_is_it(month)
    case month
    when 1
      "January"
    when 2
      "February"
    when 3
      "March"
    when 4
      "April"
    when 5
      "May"
    when 6
      "June"
    when 7
      "July"
    when 8
      "August"
    when 9
      "September"
    when 10
      "October"
    when 11
      "November"
    when 12
      "December"
    end
  end

end
