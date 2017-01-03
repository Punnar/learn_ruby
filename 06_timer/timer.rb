class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
  	@seconds = 0
  end

  def time_string
  	hours = seconds/3600
  	puts " initial hours: " + hours.to_s

  	minutes = seconds/60
  	puts " initial minutes: " + minutes.to_s
  	secondss = seconds
  	puts " initial seconds: " + secondss.to_s


  	if secondss >= 60
  		puts "seconds are over 60"
  		secondss = secondss % 60
  	end
  	puts secondss.to_s

  	if minutes >= 60
  		minutes -= 60
  	end

  	hours = padded(hours) 

  	minutes = padded(minutes)
 
  	secondss = padded(secondss)
  	puts secondss.to_s



  	string = hours.to_s + ":" + minutes.to_s + ":" + secondss.to_s
  end 


def padded (num)
	if num < 10
		return "0" + num.to_s
	end
	num.to_s
end

end

