
class TimerManagerSolution {
    var totalSeconds as Numner;
    var secondsRemaining as Number;
    var isActive as Boolean;
    var isComplete as Boolean;

	function initialize(seconds as Number) {// initialized with the total numbner of seconds to countdown with
        self.totalSeconds = seconds;        // This number won't change, we will use it when resetting
        self.secondsRemaining = seconds;    // This will be 
        self.isActive = false;
        self.isComplete = false;
	}

    // Countdown has begun
    function start() {

    }

    // Countdown has been paused
    function stop() {

    }

    // Reset everything here
    function reset() {

    } 

    // This will be called in the onCompute function, so every seconds
    function decrementSeconds() {

    }

    // Return "complete" if done, or formatted time
    function formattedString() {
        
    }

    function timerFormatted(seconds as Number) {
	// Your timer formatted runction here
    }
}