def decode_morse_char(code)
    decode_morser = { 
        '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', 
        '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', 
        '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', 
        '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', 
        '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', 
        '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4', 
        '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9', 
        '-----' => '0' }
    decode_morser[code]
end

puts decode_morse_char('.-')

def decode_morse_word(code)
    result = ''
    arr = code.split
    arr.each do |char|
        result += decode_morse_char(char)
    end
    result
end

puts decode_morse_word('-- -.--')

def decode_morse(code)
    result = ''
    arr = code.split('  ')
    arr.each { |item| result += "#{decode_morse_word(item)}" }
    result.strip
end

puts decode_morse('-- -.--  -. .- -- .')

# Decode the message from the old issued bottle =>
puts decode_morse('      .-   -... --- -..-   ')

puts decode_morse('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
