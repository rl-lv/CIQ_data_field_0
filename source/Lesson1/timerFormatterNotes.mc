using Toybox.Lang;

//
// GLOBAL FUNCTION
//
// This is a global funtion

// function timerFormat(seconds as Number) {
    // retruns a string
// }
// To access this functions al you wil have to is the following:
//
//  var seconds = 5 * 60; // 5 minutes
//  var timeFormated = $.timerFormat(seconds);
// 
//  You are probably wondering what the `$` symbol is.
//
//  From the CIQ Documentation: Sometimes you want to run your search 
//  from the global namespace instead of your current scope. You can 
//  do this using the bling symbol $. The bling symbol refers to global scope.
//
//  In short, always use this when you are referring to the global namespace.


//
//  CLASS
//
//  This is a class, and must be instatiated before accessing any of the functions
class TimerFormatter {
    function format(seconds as Number) {
        // return a string of the formatted time here
    }
}
//  This will look like the following:
//
//  var seconds = 5 * 60; // 5 minutes
//  var formatter = new TimerFormatter()
//  var timeFormatted = formatter.format(seconds);
//


