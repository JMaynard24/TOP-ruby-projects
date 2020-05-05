def cipher(text, amount)
    new_text = ""
    text.each_char { |c|
        num = c.ord
        if num >= 65 and num <= 90
            num += amount
            while num > 90
                num -= 26
            end
            new_text += num.chr
        elsif num >= 97 and num <= 122
            num += amount
            while num > 122
                num -= 26
            end
            new_text += num.chr
        else
            new_text += c
        end
    }
    return new_text
end

string_to_cipher = ""
cipher_amount = "0"

while string_to_cipher.length == 0 do
    puts "\nWhat string would you like to cipher? "
    string_to_cipher = gets.chomp
    if string_to_cipher.length == 0
        puts "Error! Nothing entered. Try again!"
    end
end

until cipher_amount.to_i > 0 do
    puts "\nHow many layers of ciphering do you want? "
    cipher_amount = gets.chomp
    if cipher_amount.to_i <= 0
        puts "Error! Not a number, 0, or negative numbers not allowed!. Try again!"
    end
    if cipher_amount.to_i > 1000000
        puts "That's quite a big number! Please enter something smaller. (Max 1000000)"
        cipher_amount = "0"
    end
end

final_string = cipher string_to_cipher, cipher_amount.to_i

puts "\nYour ciphered string is: #{final_string}\n\n"
