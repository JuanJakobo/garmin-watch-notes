using Toybox.WatchUi;
using Toybox.System;

class EditConfirmationDelegate extends WatchUi.ConfirmationDelegate {
    function initialize() {
        ConfirmationDelegate.initialize();
    }

    function onResponse(response) {
        return false;
    }
}
