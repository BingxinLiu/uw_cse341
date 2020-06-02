(* Write a function is_older that takes two dates and evaluates to true or false. It evaluates to true if
the first argument is a date that comes before the second argument. (If the two dates are the same,
the result is false. *)
fun is_older (date1 : int*int*int, date2 : int*int*int ) =
  if (#1 date1) < (#1 date2)
  then true
  else if (#1 date1) = (#1 date2)
  then if (#2 date1) < (#2 date2)
       then true
       else if (#2 date1) = (#2 date2)
       then if (#3 date1) < (#3 date2)
	    then true
	    else if (#3 date1) = (#3 date2)
	    then false
	    else false
       else false
  else false


(* Write a function number_in_month that takes a list of dates and a month (i.e., an int) and returns
how many dates in the list are in the given month. *)
fun number_in_month (dateLists : (int*int*int) list, month : int) =
  if null dateLists
  then 0
  else let
      fun num_of_mounth( dateLists : (int*int*int) list) =
	if null (tl dateLists)
	then if (#2 (hd dateLists)) = month
	     then 1
	     else 0
	else let val num = num_of_mounth( tl dateLists )
	     in
		 if (#2 (hd dateLists)) = month
		 then num + 1
		 else num
	     end
  in
      num_of_mounth dateLists
  end


(*Write a function number_in_months that takes a list of dates and a list of months (i.e., an int list)
and returns the number of dates in the list of dates that are in any of the months in the list of months.
Assume the list of months has no number repeated. Hint: Use your answer to the previous problem.*)
fun number_in_months (dateList : (int*int*int) list, months : int list) =
  if null dateList orelse null months
  then 0
  else let val num = number_in_months(dateList, tl months)
       in num + number_in_month(dateList, hd months)
       end

(* function 4 : dates_in_month
Write a function dates_in_month that takes a list of dates and a month (i.e., an int) and returns a
list holding the dates from the argument list of dates that are in the month. The returned list should
contain dates in the order they were originally given. *)
fun dates_in_month ( dateList : (int*int*int) list, month : int ) =
  if null dateList
  then []
  else if (#2 (hd dateList)) =  month
  then (hd dateList) :: dates_in_month(tl dateList, month)
  else dates_in_month(tl dateList, month)


(* function 5 : dates_in_months
Write a function dates_in_months that takes a list of dates and a list of months (i.e., an int list)
and returns a list holding the dates from the argument list of dates that are in any of the months in
the list of months. Assume the list of months has no number repeated. Hint: Use your answer to the
previous problem and SML’s list-append operator (@). *)
fun dates_in_months (dateList : (int*int*int) list, months : int list) =
  []



(* function 6 : get_nth
Write a function get_nth that takes a list of strings and an int n and returns the n
th element of the
list where the head of the list is 1st. Do not worry about the case where the list has too few elements:
your function may apply hd or tl to the empty list in this case, which is okay. *)
fun get_nth ( stringsList : string list, n : int) =
  ""

	   
(* function 7 : date_to_string
Write a function date_to_string that takes a date and returns a string of the form January 20, 2013
(for example). Use the operator ^ for concatenating strings and the library function Int.toString
for converting an int to a string. For producing the month part, do not use a bunch of conditionals.
Instead, use a list holding 12 strings and your answer to the previous problem. For consistency, put a
comma following the day and use capitalized English month names: January, February, March, April,
May, June, July, August, September, October, November, December.*)




fun date_to_string (date : (int*int*int)) =
 ""


(* function 8 : number_before_reaching_sum
Write a function number_before_reaching_sum that takes an int called sum, which you can assume
is positive, and an int list, which you can assume contains all positive numbers, and returns an int.
You should return an int n such that the first n elements of the list add to less than sum, but the first
n + 1 elements of the list add to sum or more. Assume the entire list sums to more than the passed in
value; it is okay for an exception to occur if this is not the case. *)
fun number_before_reaching_sum (sum : int, aList : int list) = 1

(* function 9 : what_month
Write a function what_month that takes a day of year (i.e., an int between 1 and 365) and returns
what month that day is in (1 for January, 2 for February, etc.). Use a list holding 12 integers and your
answer to the previous problem. *)

fun what_month (day : int) = 1

(* function 10 : month_range
Write a function month_range that takes two days of the year day1 and day2 and returns an int list
[m1,m2,...,mn] where m1 is the month of day1, m2 is the month of day1+1, ..., and mn is the month
of day day2. Note the result will have length day2 - day1 + 1 or length 0 if day1>day2. *)
fun month_range (day1 : int, day2 : int) = []

										      
(* function 11 : oldest
Write a function oldest that takes a list of dates and evaluates to an (int*int*int) option. It
evaluates to NONE if the list has no dates and SOME d if the date d is the oldest date in the list. *)
fun oldest (datesList : (int*int*int) list) = (0,0,0)

					       
(* function 12 : number_in_months_challenge & dates_in_months_challenge
Challenge Problem: Write functions number_in_months_challenge and dates_in_months_challenge
that are like your solutions to problems 3 and 5 except having a month in the second argument multiple
times has no more effect than having it once. (Hint: Remove duplicates, then use previous work.) *)

(* function 13 : reasonable_date
Challenge Problem: Write a function reasonable_date that takes a date and determines if it
describes a real date in the common era. A “real date” has a positive year (year 0 did not exist), a
month between 1 and 12, and a day appropriate for the month. Solutions should properly handle leap
years. Leap years are years that are either divisible by 400 or divisible by 4 but not divisible by 100.
(Do not worry about days possibly lost in the conversion to the Gregorian calendar in the Late 1500s.) *)
