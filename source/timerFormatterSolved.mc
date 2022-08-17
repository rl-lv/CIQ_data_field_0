import Toybox.Lang;

function timerFormatSolution1(seconds as Number) {
	var hour = (seconds / 3600).toNumber();
	var min = ((seconds / 60) % 60).toNumber();
	var sec = (seconds % 60).toNumber();

    // toNumber() is used to get rid of the decimal values

	// Format seconds
	var seconds_string = sec;
	var minutes_string = min;
	var hours_string = hour;
	
	// Format minutes
	if (sec < 10) { seconds_string = "0" + sec; } // Add a leading 0

	// Format Hours
	if (hour >= 1) {
        if (min < 10) { minutes_string = "0" + min; } // Add a leading 0
		return hours_string + ":" + minutes_string + ":" + seconds_string;
	} 
    
    return minutes_string + ":" + seconds_string;
}

function timerFormatSolution2(seconds as Number) {
	// Parse hour the time values separately
	var hour = (seconds / 3600).toNumber();
	var min = ((seconds / 60) % 60).toNumber();
	var sec = (seconds % 60).toNumber();

	// Assign what formatting we need
	var secFormat = "%02i";
	var minFormat = (min > 9 || hour > 0) ? "%02d" : "%01i";
	var hourFormat = (hour > 0) ? "%02i" : "%01i";

	// Format the string
	var format = (hour > 0) ? "$1$:$2$:$3$" : "$1$:$2$";
	var values = (hour > 0) ? [hour.format(hourFormat), min.format(minFormat), sec.format(secFormat)] : [min.format(minFormat), sec.format(secFormat)];
	var timeFormatted = Lang.format(format, values);
	
	// Return
	return timeFormatted;
}