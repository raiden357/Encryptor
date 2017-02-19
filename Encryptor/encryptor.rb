class Encryptor
  def cipher # hash containing the  lookup table

    {'a'=>'n', 'b'=>'o','c'=>'p','d'=>'q',
     'e'=>'r','f'=>'s','g'=>'t','h'=>'u',
     'i'=>'v','j'=>'w','k'=>'x','l'=>'y',
     'm'=>'z','n'=>'a','o'=>'b','p'=>'c',
     'q'=>'d','r'=>'e','s'=>'f','t'=>'g',
     'u'=>'h','v'=>'i','w'=>'j','x'=>'k',
     'y'=>'l','z'=>'m',}
   end

   def encrypt_letter(letter)   # creates new method which encrypts the message
     lowercase_letter = letter.downcase # automatically changes letters to lowercase
     cipher[lowercase_letter]
   end

   def encrypt (string)
     letters = string.split("") # 1. Split input string into letters

     # 2. Encrypt each letter one at a time, storing the results in an array
     results = []
     letters.each do |letter|
       encrypted_letter = encrypt_letter(letter)
       results.push(encrypted_letter)
     end

     # 3. Merge the results back togetther in one string
     results.join
   end
