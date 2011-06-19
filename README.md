In this repo you will find a collection of files each solving the same problem in a different programming language.

# The problem

Write a programm with a command line interface that takes one string argument in the following form:
The string represents a list by encapsulated the content in square brackets. The list consists of commaseparated words, each prefixed by
either Pre, Suf or Uni. Each word is double quotes.

The programm prints all combinations of the words, where:

- words prefixed with Pre are only used as Prefix
- words prefixed with Suf are only used as Suffix
- words prefixed with Uni are used as prefix and suffix

Words that consist of euqal words are not printed.

example input: '[Pre "neo", Suf "master", Pre "turbo", Uni "leo", Suf "3000"]'

