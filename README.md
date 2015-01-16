LUHN ALGORITHM
--------------

[The Luhn Algorithm](http://en.wikipedia.org/wiki/Luhn_algorithm)

Implement the Luhn Algorithm which is used to help validate a variety of identification numbers such as credit card numbers. 

How to implement: 

1. If there is an even number of digits, double every other digit starting with the first; if there is an odd number of digits, double every other digit starting with the second. 

2. If a resulting doubled number is greater than 9, replace it with either the sum of its own digits or 9 subtracted from it (Example: 18 = 1+8 = 9)

3. Take the sum of all the final digits. 

4. Finally, take that sum and divide it by 10. If the remainder equals 0, the original credit card number is valid. 