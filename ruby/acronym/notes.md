Some notes on this Kata

Usage of regular expression is the main theme here:

https://www.regular-expressions.info/wordboundaries.html

```ruby
  # /\w/ returns all matches character
  'Complementary metal-oxide semiconductor'.scan(/\w/)
  # => ["C", "o", "m", "p", "l", "e", "m", "e", "n" ...]

  # \b acts as a boundary
  # \b\w returns all matching word at the boundary
  'Complementary metal-oxide semiconductor'.scan(/\b\w/)
```
