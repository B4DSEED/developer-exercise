class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    words = str.split
    words.map! do |word| punctuation = (word[-1] =~ /\p{P}/) ? word[-1] : ''
      if word.size > 4
        # I considered using regex for this, but opting for clarity instead.
        if word[0] == word[0].upcase
          "Marklar" + punctuation
        else
          "marklar" + punctuation
        end
      else
        word
      end
    end
    words = words.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    a, b = 0, 1
    sequence = []
    # Create the sequence up to nth
    while sequence.length < nth
      a, b = b, a + b
      sequence << a
    end
    # Filter for even numbers and sum it up
    sequence.select{ |num| num.even? }.sum
  end
end
