# Coq Number Renderer
Coq number rendering library.

## Overview
Turning numbers into strings and vice-versa was a common problem in my Coq projects, so I built this to save me coding this up about a million times. Not every numeric data type is renderable as a string (as far as I know), so more specifically this library offers:

* `z_to_string`: Converts a binary number in Z to a string.
* `q_to_string`: Converts a rational number in Q to a string.
* `z_of_string`: Converts a string to a whole number or 0 if it does not make sense.
* `n_of_string`: Converts a string to a binary natural number or 0 if it does not make sense.
* `pos_of_string`: Converts a string to a positive number or 1 if it does not make sense.
* `nat_of_string`: Converts a string to a natural number or 0 if it does not make sense.

## Limitations
This library does not have any accompanying proofs. This may be addresed in the future. Not every numeric data type can be rendered as a string (numbers in R are a prime exmaple of this), but the methods implemented here are not exhaustive either. This library will expand as needed.
