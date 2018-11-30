-module(tut11).
-export([month_length/2]).

month_length(Year, Month) ->
	% All years divisible by 400 are leap 
	% Years divisible by 100 are not leap (except the 400 rule above)
	Leap = if
		trunc(Year / 400) * 400 == Year -> leap;
		trunc(Year / 100) * 100 == Year -> not_leap;
		trunc(Year / 4) * 4 == Year -> leap;
		true -> not_leap
	end,

	case Month of 
		jan -> 31;
		feb when Leap == leap -> 29;
		feb -> 28;
		mar -> 31;
		apr -> 30;
		may -> 31;
		jun -> 30;
		jul -> 31;
		aug -> 31;		
		sep -> 30;
		oct -> 31;
		nov -> 30;
		dec -> 31
	end.	