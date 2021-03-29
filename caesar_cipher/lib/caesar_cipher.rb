# lib/caesar_cipher.rb
class CaesarCipher

  def encrypt (message, shift) 
    shifted_chars = []
    shifter = shift % 26 # reduces large shift input

    message.each_char { | char | 
      if char.match?(/[[:alpha:]]/)
        if ((char.ord.between?(65, 90)) && (char.ord + shifter > 90)) || ((char.ord.between?(97, 122)) && (char.ord + shifter > 122))
          shifted_chars.push((char.ord + shifter -26).chr)
        else
          shifted_chars.push((char.ord + shifter).chr)
        end
      else 
        shifted_chars.push(char)
      end
    }
    
    encrypted_message = shifted_chars.join('')
  end

end