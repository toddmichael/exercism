/*

Ack this is probably bad kung-fu to put "pseudocode" in comments but
trying to do some soup-to-nuts programming education here so figured
I put all together for now.  Will remove if/when my Excercism mentors
knock me for it.

Package leap calculates whether or not years are/were leap years.

Input year

Is year evenly divisibly by 4?
 - true: go to next step
 - false: not a leap year

Is year evenly divisible by 100?
 - true: go to next step
 - false: leap year

 Is year evenly divisible by 400?
 - true: leap year
 - false: not a leap year

Output true/false.

TODO: input validation. Ensure user provides a year.
TODO: error handling.

*/
package leap

// divisible takes dividend & divisor and calculates if evenly divisible.
func divisible(dividend int, divisor int) bool {
	// answer boolean to hold response
	var answer bool

	if dividend%divisor == 0 {
		answer = true
	} else {
		answer = false
	}
	return answer
}

// IsLeapYear takes a year and calculates if it's a leap year.
func IsLeapYear(year int) bool {

	// answer boolean to hold response
	var answer bool

	// vars for holding the division answers that I need to assess
	// perhaps unnecessarily verbose, but i'll let someone else
	// tell me that before I refactor
	divisibleBy4 := divisible(year, 4)
	divisibleBy100 := divisible(year, 100)
	divisibleBy400 := divisible(year, 400)

	// leap year logic
	if divisibleBy4 == true && (divisibleBy100 == false || divisibleBy400 == true) {
		answer = true
	} else {
		answer = false
	}

	return answer
}
