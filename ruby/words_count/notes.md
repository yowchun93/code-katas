This kata is a test on 2 things
1. Regular Expression again ..
2. Iteration

All potential solutions explored, https://stackoverflow.com/questions/19509307/split-string-by-multiple-delimiters/19509391
```ruby
 split(/,| /)
 scan(/\w+/) , this is the pick
 Regex Union, delimiters = [',', ' ', ":", ",\n"]
 scan(/\b[\w']+\b/)
```