# decode morse code character
def decode_char(str)
  morse_code = {
    '.-' => 'A',    
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_code[str]
end

# print decode_char('.-')

#decode entire word
def decode_word(str)
  word = ''
  # Split without parameters
  # Here the pattern is a 
  # single whitespace
  items = str.split
  items.each { |i| word+= decode_char(i) }
  word
end

# print decode_word('-- -.--')

#decode message
def decode(str)
  message = ''
  # Split by 3 spaces
  items = str.split('   ')
  items.each { |i| message+= "#{decode_word(i)} " }
  message
end

# print decode('-- -.--   -. .- -- .')
print decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')