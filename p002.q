// Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
// 
// 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
// 
// By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

fibonacci:{{x,sum -2#x}/[x;0 1]}
fibonacci/ 1000
{fibonacci}\[10]

\ts sum r where 0=mod[;2] r:1_({last x<=4000000}{-2#x,sum x}\1 1)[;0]

({last x<=4000000}{-2#x,sum x}\1 1)[;0]