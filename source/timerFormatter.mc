class timerManagerSolution {
    var isActive as Boolean;
    var isComplete as Boolean;
    var totalSeconds as Number;
    var remainingSeconds as Number;

    function initialize(seconds as Number) {
        self.totalSeconds = seconds;
        self.remainingSeconds = seconds;
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
        self.isActive = false;
        self.isComplete = false;
        self.remainingSeconds = self.totalSeconds; // go back to starting conditions
    }

    function decrementSeconds() {
        if (self.isActive == true) {
            if ((self.remainingSeconds - 1) == 0) {
                self.isComplete = true; // we're done, stop decrementing
                self.isActive = false;
            }
        }
        return (self.remainingSeconds -1);
    }

    function formattedString() {
        var retval = self.isComplete ? timerFormatted(self.remainingSeconds) : "Complete";
        return retval;
    }

    function timerFormatted(seconds as Number) { // leaving this called by argument instead of class member for flexibility
        var hour = seconds / 3600; // decimal
        var min = (seconds % 3600) / 60; // (remainder of seconds/3600) / 60 // decimal
        var sec = seconds % 60;

        var retval = "";
        if (hour >= 1) { // are we printing it at all?
             retval += (hour >= 10) ? hour.format("%02i") : hour.format("%01i");
            retval += ":";
        }

        retval += ((min >= 10) || (hour >= 1)) ? min.format("%02i") : min.format("%01i"); // account for hh:00:ss
        retval += ":" + sec.format("%02i");
        return retval;
    }

}