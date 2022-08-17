
function timerFormat(seconds as Number) {
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