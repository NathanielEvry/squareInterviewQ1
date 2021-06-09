# squareInterviewQ1
Quick re-do of the Square coderpad.io question

## Goal
Write a function to parse a very long string and turn it into list of strings where the length of the new string doesn't exceed a certain number of characters, keeping the words intact, and putting as many words as you can into each new string.

- Write a func with signature split_jammer(text, max_len) -> [str]
  - Only splits on whitespace
  - Does not exceed `max_len`
  - Each substring in the returned list is the longest possible combination (when working in an L-R language like English).
  - You may discard words that are longer than max_len and thus cannot be split due to rule number 1.

- long_string='I have a very long string that needs to be chopped'
- output_at_length_of_10 = ["I have a", "very long", "string", "that needs", "to be", "chopped"]
