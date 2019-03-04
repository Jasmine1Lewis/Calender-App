current_time = Time.new
puts current_time.month

current_month = current_time.month
puts current_month
current_month = Month.new(current_time)

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
