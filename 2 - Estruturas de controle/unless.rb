product_status = 'closed'

# E possivel  usa o if  Not tambem no lugar do unless

unless product_status == 'closed'
  check_change = 'can'
else
  check_change = 'can not'
end



puts "You #{check_change} change  the product"
