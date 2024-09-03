day = 'holiday'

if day == 'sunday'
  lunch = 'special'
elsif day == 'holiday'
  lunch = 'later'
else
  lunch 'normal'
end

puts "lunch is #{lunch} today"
