def caesar_cipher(word, shift)
    output =word.chars.map do|letter|
        value=letter.ord 
        if value.between?(65, 90)
            value+=shift
            if value>90
                value-=26
            end
            value.chr
        elsif value.between?(97, 122)
            value+=shift
            if value>123
                value-=26
            end
            value.chr
        else
            letter
        end
    end
    puts output.join()
    

    #only do it if in range
end

caesar_cipher("What a string!", 5)