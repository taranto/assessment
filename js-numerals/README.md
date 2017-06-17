
Javascript/Frontend Programmer - Exercise 1
=============================

Fork this project with the original description and write your own code. Don't use external library for the conversion.

Commit the important milestones and not just the final result!


Exercise description
--------------------

Create a frontend application.

We need a web form, which has a numeric input field and a submit button.

When user gives an arabic number, the system shows the english phrase of the number.

For example:
<pre>
7    == seven
42   == forty-two
2001 == two thousand and one
1999 == nineteen hundred and ninety-nine
17999 == seventeen thousand nine hundred and ninety-nine
</pre>

That's all.

Extra points:

* write your code in TDD / BDD, use any test frameworks


To run this application
====================================
<ul>
<li>Download these files</li>
<li>Run js-numerals.html</li>
</ul>

It will ask you a numeral, then it will return the translation of the numeral just inserted.
It only supports numbers below 100 000

To evaluate the tests
---------------------
To evaluate the tests made during the development, run the following html:

<ul>
<li>Run js-numeralsTest.html</li>
</ul>

Project decision making
---------------------
I decided to use a very simple assertion library found at https://github.com/Jxck/assert. 
It is only a pure validator, so I decided to build a report of it myself. The reason I did it is because the business translationlogic wouldn't be any effort, as it was already solved in the ruby programming. Then the javascript development "would have something to do".
The test component was the only archive I made non-static. That's because it is the only archive I needed context while the usage(to be able to deliver a report in the end). Also the usage of the other archives I did not see reason of instantiatiation under a real-code environment. They would work as they are with no problem.
I could also build another class/object for the test messages(@testMsgs variable in testComponent.js), as they're only delivered as text. A structured data would make this class more powerful, however for the purposes of the development here, it wouldn't be necessary more than a little report text. Then in the future it can be a next step for a class extension.
I'm aware that the method 'testIt' forces the test to make an 'equal' assert. The reason why it was made is because in the current context there is only the necessity of equal assertions.