# Name: Ma Crizza Lynne Regacho
# Date: 2025-01-15
# Description: U0 - Challenge Zero



# Prompt user for subtotal and convert to float
print "Enter the subtotal: "
sub_total = gets.chomp.to_f
# gets: reads input from the user as a string
# chomp: removes the trailing newline character from the input string
# to_f: converts the input string to a floating-point number



# GST and PST rate in constant
PST_RATE = 0.07
GST_RATE = 0.05 

# Calculate GST and PST
pst_amount = sub_total * PST_RATE
gst_amount = sub_total * GST_RATE
grand_total = sub_total + pst_amount + gst_amount

# Final output
puts "Subtotal: $#{sub_total}"
puts "PST: $#{pst_amount} - #{PST_RATE * 100}%"
puts "GST: $#{gst_amount} - #{GST_RATE * 100}%"
puts "Grand Total: $#{grand_total}"

# Print message based on grand total
if grand_total <= 5.00
  puts "Pocket Change"
elsif grand_total < 20.00
  puts "Wallet Time"
else
  puts "Charge It!"
end

