require 'ruby-dictionary'
require_relative("lib/wordchain.rb")

dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary,'fw','sw')

my_chain.find_chain

