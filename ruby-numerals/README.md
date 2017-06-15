
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
<li>install ruby</li>
<li>download these git files.</li>
<li>run the ruby-numerals.rb file under the following code:</li>
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

There is also a support class with it's tests for validations, and they're called numerals_util.rb and numerals_util_test.rb.
The archive numerals_string.rb is only meant to separate the text from the logic.