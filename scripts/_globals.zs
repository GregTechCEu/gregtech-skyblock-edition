#priority 10000

//Functions
global sec as function(int)int = function (second as int) as int {
	//turns seconds to ticks
	return second * 20;
};