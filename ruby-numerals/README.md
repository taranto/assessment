
Ruby Programmer - Exercise 1
=============================

1. Fork this project.
2. Don't use external libraries for the conversion.
3. Create only a Ruby class or a set of classes (no web frameworks or Heroku please)
4. Write tests

Commit the important milestones and not just the final result!


Exercise description
--------------------

When user gives an arabic number, the system shows the english phrase of the number.

For example:
<pre>
7    == seven
42   == forty-two
2001 == two thousand and one
1999 == nineteen hundred and ninety-nine
17999 == seventeen thousand nine hundred and ninety-nine
</pre>

--------------------

To run this application
========================================
<ul>
<li>Install ruby</li>
<li>Download these git files</li>
<li>Run the ruby-numerals.rb file under the following code:</li>
</ul>
<pre>
ruby ruby-numerals.rb
</pre>

It will ask you a numeral, then it will return the translation of the numeral just inserted.
It only supports numbers below 100 000

To evaluate the tests
---------------------
To evaluate the tests made during the development, run the following code:
<pre>
ruby numerals_test.rb
</pre>

Project decision making
---------------------
I made the tests and development until the five digits because of the examples length. The examples were the main goal towards the objective during the development.
Considering the reason above, all the tests and development were meant to work with the examples given. Also, that's why the phrase is divided like 2-1-2 for a 5-length number. Another thing is important to be said: the '-' between the 2-digit numbers were also meant to work with the examples, even if they were placed in the thousands and hundreds.
The reasons why I actually mention about it is because I could've called, for example, a number as 'one thousand nine hundred and ninety nine' (divided like 1-1-2, and no minus character between them).
The first letter of the word of the examples were not capitalized, so it wasn't counted as a necessity.
There weren't any dots in the examples, so translating fractions weren't mean to be a feature. Then if a dot is inserted, everything after it is cut.
The exceptions and error caring were also made for software robustness. A point here that may be worth mentioning is that if there isn't any numbers asked to the program, it will tell you 'zero'. Instead if you ask a number bigger than 99999, it wont bring you any translation.
There is also a support class with it's tests for validations, and they're called numerals_util.rb and numerals_util_test.rb.
The archive numerals_string.rb is only meant to separate the text from the logic.
