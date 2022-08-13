import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;
import Toybox.System;

class complex_data_field_0App extends Application.AppBase {

    function initialize() {
        AppBase.initialize();

        var secondsArr = [
            5,          // 5 seconds 
            60,         // 1 Minute
            5 * 60,     // 5 Minutes 
            30 * 60,    // 30 Minutes
            60 * 60     // 1 Hour
        ];
        
        for (var i = 0; i < secondsArr.size(); i++) {
            var seconds = secondsArr[i];
            
            System.println("Input: " + seconds + " seconds");    // Print the input value to the console
            
            var formattedTime = $.timerFormat(seconds);

            System.println("Output: " + formattedTime);         // print the result to the console
            System.println("===================");              // Line break for console
        }

    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
    }

    //! Return the initial view of your application here
    function getInitialView() as Array<Views or InputDelegates>? {
        return [ new complex_data_field_0View() ] as Array<Views or InputDelegates>;
    }

}

function getApp() as complex_data_field_0App {
    return Application.getApp() as complex_data_field_0App;
}