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
Write a function dates_in_month that takes a list of dates and a month (i.e., an int) and returns a list holding the dates from the argument list of dates that are in the month. The returned list should contain dates in the order they were originally given. *)



(* function 5 : dates_in_months
Write a function dates_in_months that takes a list of dates and a list of months (i.e., an int list) and returns a list holding the dates from the argument list of dates that are in any of the months in the list of months. Assume the list of months has no number repeated. Hint: Use your answer to the previous problem and SML’s list-append operator (@).*)




(* function 6 : Write a function get_nth that takes a list of strings and an int n and returns the n th element of the list where the head of the list is 1st. Do not worry about the case where the list has too few elements: your function may apply hd or tl to the empty list in this case, which is okay.*)

	   jsjkljaks
