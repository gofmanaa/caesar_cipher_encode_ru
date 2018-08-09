alph =%w[а б в г д е ё ж з и й к л м н о п р с т у ф х ц ч ш щ ъ ы ь э ю я]
encode_phrase = 'иблпейспгбооба хсбиб' #закодированная фраза

indexes = []
encode_phrase.each_char do |ch|
  indexes << alph.index(ch)
end

alph.length.times do |shift|
  decode_phr_index = []
  alph.rotate!
  indexes.each do |i|
    decode_phr_index << " " && next if i.nil?
    alph.each_with_index do |ch, index|
      decode_phr_index << ch if i == index
    end
  end
  puts decode_phrase = decode_phr_index.join('')
end

