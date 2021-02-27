# Problem 11

(*) Modified run-length encoding.

Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.

# Problem 12

(**) Decode a run-length encoded list.

Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.

# Problem 13

(**) Run-length encoding of a list (direct solution).

Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.

# Problem 14

(*) Duplicate the elements of a list.

# Problem 15

(**) Replicate the elements of a list a given number of times.

# Problem 16

(**) Drop every N'th element from a list.

# Problem 17

(*) Split a list into two parts; the length of the first part is given.

Do not use any predefined predicates.

# Problem 18

(**) Extract a slice from a list.

Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 1.

# Problem 19

(**) Rotate a list N places to the left.

Hint: Use the predefined functions length and (++).

# Problem 20

(*) Remove the K'th element from a list.