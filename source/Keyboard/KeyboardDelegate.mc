import Toybox.WatchUi;

class KeyboardDelegate extends WatchUi.InputDelegate {
    public function initialize() {
        WatchUi.InputDelegate.initialize();
    }
}

class KeyboardListener extends WatchUi.TextPickerDelegate {
    private var _delegate as KeyboardDelegate;

    public function initialize(delegate as KeyboardDelegate) {
        WatchUi.TextPickerDelegate.initialize();
        _delegate = delegate;
    }

    public function onTextEntered(text as String, changed as Boolean) as Boolean {
        var itemView = new $.ItemsView();
        var delegate = new $.ItemsDelegate();
        WatchUi.switchToView(itemView, delegate, WatchUi.SLIDE_IMMEDIATE);
        WatchUi.pushView(itemView, delegate, WatchUi.SLIDE_IMMEDIATE);
        return true;
    }

    public function onCancel() as Boolean {
        HomeView.openHomeView();
        return true;
    }
}