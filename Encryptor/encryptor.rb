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

   def encrypt(letter) # creates new method which encrypts the message
     cipher[letter]
   end
 end