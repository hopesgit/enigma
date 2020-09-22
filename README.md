# Enigma
## Group Members: Hope Gochnour
## Turing School Mod 1 Project

### What is this?
Welcome to my Enigma project! This is a tool that can encrypt your messages or decrypt messages sent to you! It's a bit of a complicated project and the uses are a bit strange, so allow me to explain them here.

To start with, you can encrypt messages using the ```encrypt.rb``` runner file in the ```/lib``` directory. To use it, specify:

``` ruby ./lib/encrypt.rb <filename of file to encode> <file to encode to> ```

for example:

``` ruby ./lib/encrypt.rb message.txt encrypted.txt ```

Whatever you want to write can just be written to the ```message.txt``` file beforehand and you can use the code above to write more easily, if you would like!

The same can be said for decryption, but it's a little more complicated.

``` ruby ./lib/decrypt.rb <encrypted file filename> <file to be made filename> <key> <date (formatted ddmmyy)>```

for example:

```ruby ./lib/decrypt.rb encrypted.txt decrypted.txt 82648 240818 ```

Hint: running the ```encrypt.rb``` file first will encrypt the contents of the ```message.txt``` file and provide the key used and the date! Use those to decipher the content of the resulting file using the ```decrypt.rb``` file!

That should get you going! Thank you for checking out my repo!
