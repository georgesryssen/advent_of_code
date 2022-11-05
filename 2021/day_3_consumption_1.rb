# The first parameter to check is the power consumption
# You need to use the binary numbers in the diagnostic report to generate two new binary numbers (called the gamma rate and the epsilon rate)

# gamma rate can be determined by finding the most common bit in the corresponding position of all numbers in the diagnostic report.
# gamma: most commom per colum
# gamma_b = gamma.to_i(2)

# The epsilon rate is calculated in a similar way; rather than use the most common bit, the least common bit from each position is used.
# epsilon = replace 0 by 1 and 1 by 0
# epsilon_b = epsilon.to_i(2)

# The power consumption can then be found by multiplying the gamma rate by the epsilon rate.
# power = gamma * epsilon

rays = ["010100110111", "101001010000", "101011110010", "100100011101", "101000011000", "110011011110", "111010010100", "001111100000", "111101100001", "100010101110", "101101110101", "010010101110", "111001110100", "000101111000", "111101111100", "000010001100", "101010111101", "001010011011", "001101101101", "000000110100", "001100101011", "110110110010", "001110000011", "011001111001", "110100110011", "011000110001", "111100100010", "101011000000", "011101000111", "011111000111", "111011001110", "011111010100", "001110110001", "010110110001", "100111011011", "100110100100", "110010111000", "101111001100", "101111111001", "000001000110", "100010010110", "110111100101", "001001010101", "001110001011", "101111001011", "111011110010", "101001001100", "101010100001", "000000111101", "100000000111", "111010111101", "000110110111", "100100101111", "110101100101", "011010110010", "110100001110", "001011011010", "010101010101", "011110000100", "010000000010", "010111010111", "011010011100", "101101001011", "000111100101", "101111001000", "000100010000", "111000011111", "100001010101", "011101111110", "001111011110", "001100111111", "000011000100", "001011101010", "001011010111", "101001001110", "010101011001", "110101001011", "011110011110", "001000110010", "011101110001", "101110000000", "000001100111", "110111000011", "001001111010", "100100000000", "000000011101", "111110111011", "101001111100", "110110100010", "101011011000", "000111100010", "011000110100", "111100100100", "010010100000", "111101001011", "111001000000", "001001000001", "010010100001", "110110001100", "001101100001", "011110010110", "100111011101", "001001110110", "001001100011", "011001111010", "110110010111", "110100111010", "111110011100", "100000100111", "010001101101", "110100110101", "101111101001", "100110010000", "100011001111", "101111001010", "001110111001", "111101001101", "001010111101", "010010011010", "100101101111", "100000011110", "011111010001", "000010001101", "010100101100", "001010001100", "100111011100", "011110000000", "100000011111", "000010010100", "000001001101", "011111011111", "100101001101", "000100010110", "011011111100", "000111000011", "010100101011", "011000101111", "001001100111", "110111110100", "111101111011", "110011010101", "100111111111", "010100010000", "001111110101", "010011010001", "101000111111", "000001110100", "010010010000", "100010000101", "110111100111", "001011111101", "101100101101", "001010110100", "000100110001", "111101110110", "111110101110", "100011100110", "011001001010", "001000010111", "010001110110", "011110000010", "101010101111", "110100100100", "010001100101", "001011111110", "100111100000", "111101000010", "101101011110", "101100111100", "001110011100", "110110100101", "000110111010", "011001010111", "010001000011", "100010010111", "000110110000", "001000010101", "010011010010", "110000100010", "010000101110", "010110111000", "011101001000", "011110000111", "100110100011", "110011001001", "001110000111", "000001101110", "001000100110", "011101111000", "101100000101", "110001100000", "101000100101", "110101110101", "111000101111", "101000101001", "101000100000", "101011010110", "000010111100", "011101101000", "000110101001", "000110110110", "100111001011", "100010001101", "101111000111", "100100111000", "100100111100", "000000100010", "100110000111", "101110001100", "110010010010", "100110010011", "100100000011", "000001011111", "110100100000", "000000111100", "110110010001", "001101111110", "010011010011", "001000111110", "100010010100", "000111110101", "111111101001", "100110001110", "101011011101", "110100100010", "010100001000", "100111101001", "010111010001", "001110101000", "100111101111", "100010101011", "101111100111", "111001100110", "111100110101", "001101001111", "111011011111", "011011100110", "101111011000", "100110110001", "100010011101", "000111010101", "101101011100", "111010100100", "001101000100", "101111100101", "010110001010", "111101010000", "100111110100", "100000000011", "010001111110", "011010001110", "110100010100", "010100111100", "011001101100", "110101001001", "000011100111", "011000000000", "110001000011", "101011001101", "001010110000", "010000011010", "101110101010", "001010011111", "011101000101", "110011101010", "101110001110", "100111110000", "100100010100", "010011101000", "100110000110", "111100010011", "011101101011", "100110010100", "011011100001", "011111100110", "111100101111", "000111101001", "100101011101", "010101001110", "110011110011", "111011011100", "101001101111", "100001010111", "110010111001", "011011101011", "111110001010", "000010111110", "011010000101", "011011000111", "110000000101", "010110111011", "010110110000", "011000110110", "100101001000", "000111110001", "011110000101", "001000010000", "011011000011", "100101100011", "010000100000", "100010011000", "001011100001", "000110100010", "011000111010", "100011001011", "101111111010", "001100110101", "101100111111", "010011100111", "001110110010", "000100100110", "010100010001", "100100011011", "110110100100", "100011011001", "110001000110", "110110100000", "101110001010", "000100101010", "000000100110", "110110111110", "011000111101", "001101111000", "110001100001", "101011011100", "101100001000", "100000111011", "011110010100", "010000101111", "100011100101", "100111010100", "000011010110", "111010110011", "010101000001", "001101010100", "010001010011", "100011000101", "011100011111", "100101100010", "011111011100", "011010010000", "011011011110", "101000000100", "110111111100", "100111110011", "110100010010", "100100011111", "000100001101", "001101100010", "000001010110", "110110010010", "001110000110", "101100110101", "111000110011", "111110111111", "001000111000", "010101111010", "010011101010", "010010100100", "000101001011", "010011011010", "100110111011", "100011110111", "111001001011", "011000000111", "000101101101", "001000011100", "110111111010", "011010101001", "110000010101", "011001110010", "001001001011", "111010110110", "101010000110", "110111010011", "101110011010", "011111110101", "010100110011", "010000100111", "010100001011", "011111010110", "110011111110", "100100111101", "000100111001", "011011101111", "111010001101", "100000110101", "110000000010", "111110101011", "011000010110", "001011101100", "010001110011", "111010111010", "100010011110", "001100000011", "000101110000", "111011101111", "111000000111", "100101011100", "010111000010", "010010111010", "001111111100", "101001000000", "000010111111", "001110011000", "111110011110", "101101000110", "101110100110", "100011011100", "101100000001", "111001111011", "101010101000", "010111101110", "000010100101", "100010111000", "101111000100", "000010011101", "011000111011", "010110011011", "010101100010", "100101010111", "011010101110", "110011011011", "110100101011", "110110111100", "000101110011", "011001110101", "111000100100", "101010000001", "110111100011", "100001000110", "001101011111", "101010000101", "011111111000", "000111011110", "100001111101", "011010010010", "101010011100", "101110101100", "000001010100", "101010100110", "001100101010", "101110100100", "100100111001", "110010100111", "000100001110", "111001110101", "110000101110", "000010011000", "010001110010", "000100010011", "011110100001", "001010111010", "010010111001", "010001001011", "101101001110", "011001000110", "110110011001", "110111000000", "011010111001", "001000010001", "010110011100", "000111110010", "101110000010", "000101001100", "110010111101", "001101010000", "010010011001", "010000010111", "011110011100", "111000100011", "110101011000", "101100100010", "111111100110", "010011111110", "111110000100", "100010100100", "101110111100", "110000010010", "011010000110", "000101100101", "001011001000", "111000110001", "000010001011", "111000010000", "100000101000", "001101011101", "101000101100", "010100111010", "101100000110", "001111010011", "011111110011", "101000100010", "111000001111", "111000111010", "001110000101", "110001010011", "011101011010", "101001000101", "111111001110", "111110110101", "110001110100", "101101010101", "000100011111", "101100100110", "000111011000", "101010110001", "000100110110", "101101110111", "100011101000", "010011110101", "110101111001", "110001110011", "000100111100", "010011010110", "101100000100", "011011101000", "101110000100", "100100010110", "111011100100", "011010110000", "100111011010", "110100011010", "101111111111", "110110011100", "110011100101", "100001111100", "111101100110", "110010001010", "010001001101", "101110100001", "111101001100", "110101000100", "011001110000", "010110100011", "111111000001", "110010100000", "101100110000", "110000000000", "001101110111", "001100001000", "001101101000", "101100100011", "001001011011", "011011101110", "010011111000", "110100111000", "011001101010", "111011111010", "100011111010", "001011011110", "111101100101", "100011100100", "101110101000", "000111110110", "100111010001", "110000011100", "111111111110", "110100010101", "101001110011", "000010001110", "000010001001", "110000110000", "001001000110", "110111110000", "010101010010", "111101110001", "110101101101", "010111000111", "111010110111", "001011011011", "001001100001", "101000101110", "101100110010", "100100100100", "011110111001", "011100000110", "100110110111", "111010001110", "110111111011", "011010111000", "011101100001", "011110001111", "110101011011", "000000001111", "101000001110", "111010101110", "001100001110", "010111000101", "111100111110", "001110101110", "011101111010", "011100001111", "000000000101", "111111000100", "000110010101", "001101000010", "111001111100", "101100010100", "001011001001", "010110000010", "010001101000", "001111101111", "011011011011", "111110000001", "100111011000", "011000000110", "100111101110", "101100000000", "101011000100", "111000011101", "100001101001", "100001101000", "011110001001", "110110011011", "011100010111", "000100111000", "000110000001", "000111001100", "000111111010", "110110000001", "000010011010", "100000101001", "101110001011", "100010110101", "110011010000", "111101111111", "100101011110", "101110011111", "111111011111", "011010010110", "010100101010", "001010100001", "000000110110", "110000111101", "010101101011", "110100100001", "011110001110", "111001010011", "001000001000", "000011111110", "111000100110", "100100101000", "011011000110", "111001100011", "111100101000", "110001100010", "011000000001", "111101010010", "001011000100", "010100110110", "000001111101", "001010000011", "010010100110", "100000011101", "101011010011", "000111110000", "101001001011", "100000001000", "010000111100", "000100101011", "011101010000", "101101010010", "100010011001", "001101100101", "101010010100", "111011111001", "101000010001", "001111000000", "011001000010", "100101010110", "000100001100", "010000101000", "110001111111", "000101010111", "110100101110", "111100110001", "101011000001", "101100101110", "110000101100", "101100111110", "111000010110", "010110101110", "001010100110", "110011010010", "111001100000", "100100100001", "000011011001", "111011011110", "011110000011", "101000100001", "101010010001", "101001100001", "100011001010", "100000000110", "010000100001", "001011011001", "110111010100", "111001000111", "111111110010", "101010100101", "100110001011", "010110011001", "110001111110", "100100000111", "110001110111", "101110010101", "010010111000", "000000011001", "101110000011", "100001010000", "001100001011", "111111001100", "111010010010", "010011100001", "100001111000", "000010000110", "010100011100", "101111101010", "100110010101", "101001101001", "100110101001", "001001011100", "001100011101", "001100011001", "000100100100", "100011010100", "000100001011", "111101100011", "011010001011", "111000101101", "101000010000", "010110001111", "111100010110", "000111111101", "100100111011", "101011000010", "011001100010", "101111011100", "101001110101", "101111101100", "110101001111", "111101100000", "101110011011", "100101110000", "001100111110", "010010101010", "001100100100", "001010101100", "001101100111", "110010011100", "010000001001", "011011110001", "100101110001", "101111100100", "110101101000", "110000100000", "101010011101", "111000010011", "100001010100", "000101101010", "101111001001", "000110101101", "101011010111", "000001001100", "100100111110", "000010111011", "000100000100", "100100001110", "011010000001", "010101110011", "111101101101", "101110101111", "100010100011", "110001011101", "110001011011", "100011110011", "111000011011", "110101110010", "000110010100", "101000001010", "011001011010", "111000001101", "101001101101", "111001000001", "000100000110", "110000000110", "010011001110", "011101000001", "010000101101", "010011011001", "010101001111", "011110110001", "100111110001", "101111011101", "111001000010", "111111111000", "001011101011", "001010100111", "111110111101", "011111011101", "000100111101", "010010000101", "001111101011", "110010100100", "110001011001", "010111111000", "100100101110", "110111011101", "100100000110", "111111011011", "101101111001", "111011010001", "000000011100", "011011101001", "100010111101", "110111000110", "001100110010", "111100111100", "111111000010", "100111010111", "100011001100", "110101011100", "001111001100", "101010000010", "110011010111", "110011010001", "001110110110", "000011011100", "001011001011", "100000000001", "110000100011", "011011110011", "100101100100", "011100100011", "100001110111", "011101001001", "011101100011", "011001001101", "011001000100", "010111001111", "100001001111", "101001100000", "110010001011", "010101011100", "011110110010", "111010000110", "000010100100", "110111000111", "001011010110", "010001000100", "110100010111", "010101100110", "010011101111", "101000001000", "011011001011", "100001000001", "101111110011", "100110110011", "100011100000", "101101000010", "000101011000", "111101110010", "110111010110", "101110000110", "110010110001", "000001101111", "110101101111", "000010111010", "100010010001", "111010011001", "011110011011", "000110101010", "010100001111", "010111011000", "000011110100", "010001010101", "110111011001", "010001111001", "111010111111", "010010010001", "010001100011", "111110001001", "101000010111", "001101110101", "111011000000", "001100110100", "000110001001", "110111101001", "010100110000", "101110111110", "100000000010", "110011010011", "010101100101", "110100110001", "100010100010", "101111111000", "111111100100", "011100001101", "000000100001", "100110100110", "010100100011", "000000001000", "101010110100", "100010001111", "111000001011", "010101000111", "001111110001", "000000111011", "111111101100", "001110110000", "011110111011", "001110100011", "100110000010", "010110110011", "001001101110", "110011101110", "111001100010", "111100010000", "000001010111", "001110001100", "110000101000", "100101111010", "001011001110", "100111101100", "111001101100", "110111110010", "101000110100", "100011100011", "100000100101", "100001111011", "011110101001", "000111000100", "010111100001", "111111010001", "100100001100", "111111010111", "001101111101", "000110001101", "010110000001", "111011010110", "011110110110", "011111001001", "001101011010", "010101110101", "110001100100", "101101011101", "011011010110", "001011001101", "101110110101", "001101010010", "101010001101", "100111000000", "110110101100", "001011111000", "000100111011", "000111110111", "101000111100", "110000110011", "000001000011", "000111111110", "001010010010", "100000111001", "010101111100", "001100010100", "010101110111", "110101010010", "000001001111", "101101111100", "011110111101", "111001010001", "000100101101", "011100100100", "110101000111", "011111100011", "110001001101", "100001100111", "101101100111", "000100110000", "101001100010", "001101101111", "100011000100", "011100101111", "011001100100", "011010011110", "010011001010", "011110101000", "111101111010", "110001010100", "000110010001", "001111011011", "110000111011", "000001111001", "010011001100", "100110101011", "111011001011", "001100110011", "010010011101", "100011110000", "110011110111"]

p rays.size

gamma = ""
n = 0

12.times do
  count = 0
  rays.each do |ray|
    count += ray[n, 1].to_i
  end
  n += 1
  figure = count > 500 ? "1" : "0"
  gamma += figure
end

p gamma

gamma_nb = gamma.to_i(2)
p gamma_nb

epsilon = "011001001011"

epsilon_nb = epsilon.to_i(2)
p epsilon_nb

power = gamma_nb * epsilon_nb

p "The result is #{power}"
