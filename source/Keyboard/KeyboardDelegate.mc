import Toybox.WatchUi;
import Toybox.Lang;

class KeyboardListener extends WatchUi.TextPickerDelegate {
    private var _itemId = 0;

    public function initialize(id) {
        WatchUi.TextPickerDelegate.initialize();
        _itemId = id;
    }

    public function onTextEntered(text as String, changed as Boolean) as Boolean {
        StorageHandler.addItem(_itemId, text); 
        HomeView.openHomeView();
        return true;
    }

    public function onCancel() as Boolean {
        HomeView.openHomeView();
        return true;
    }
}