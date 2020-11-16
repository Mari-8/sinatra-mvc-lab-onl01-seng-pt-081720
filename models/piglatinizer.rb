class PigLatinizer 

    def piglatinize(user_phrase) 
        user_phrase.split(" ").map { |word| piglatinize_word(word)}.join(" ") 
    end 

    def vowel?(ch) 
        ch.match(/[aAeEiIoOuU]/)
    end 

    def piglatinize_word(word) 
        if vowel?(word[0]) 
            word + "way" 
        else 
            vowels = word.index(/[aAeEiIoOuU]/)
            cons = word.slice(0..vowels-1) 
            remain = word.slice(vowels..word.length) 
            remain + cons + "ay" 
        end 
    end 

end 