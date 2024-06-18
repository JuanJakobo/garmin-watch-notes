using Toybox.WatchUi;
using Toybox.System;

class MenuInputDelegate extends WatchUi.MenuInputDelegate {
    function initialize() {
        MenuInputDelegate.initialize();
    }

    function onMenuItem(item) {
        //TODO load items here
        var item_text = "";

        if (item == :one) {
            item_text = "one";
        } else if (item == :two) {
            item_text = "two";
        } else if (item == :three) {
            item_text = "three";
        }
        
        var delegate = new $.KeyboardDelegate();
        WatchUi.pushView(new WatchUi.TextPicker(item_text), new $.KeyboardListener(delegate), WatchUi.SLIDE_DOWN);
    }
}