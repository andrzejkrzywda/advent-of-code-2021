depth_measurements = File.readlines('input_1.txt').map(&:to_i)

larger_than_previous_counter = 0

(1..depth_measurements.length-1).each do |current|
  larger_than_previous_counter += 1 if depth_measurements[current] > depth_measurements[current-1]
end

puts larger_than_previous_counter