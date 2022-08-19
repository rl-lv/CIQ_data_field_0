class TimerManagerSolution {
    var totalSeconds as Numner;
    var secondsRemaining as Number;
    var isActive as Boolean;
    var isComplete as Boolean;

	function initialize(seconds as Number) {
        self.totalSeconds = seconds;
        self.secondsRemaining = seconds;
        self.isActive = false;
        self.isComplete = false;
	}

    function start() {
        self.isActive = true;
    }

    function stop() {
        self.isActive = false;
    }

    function reset() {
        self.secondsRemaining = totalSeconds;
        self.isActive = false;
        self.isComplete = false; 
    } 

    function decrement() {
        if (isActive) {
            secondsRemaining -= 1;
        }
    }

    function formattedString() {
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
}