module Encryptable

def generate_random_number
  rand(10000).to_s.rjust(5, "0")
end

def generate_todays_date
  Time.now.strftime("%d%m%y")
end

def number_breakdown
  
end



end
