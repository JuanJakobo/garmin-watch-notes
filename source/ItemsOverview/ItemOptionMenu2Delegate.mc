import Toybox.WatchUi;
import Toybox.Lang;

class ItemOptionMenu2Delegate extends WatchUi.Menu2InputDelegate {
    private var _itemId as Integer = 0;
    private var _itemLabel as String = "";

    function initialize(itemId, itemLabel as String) {
        Menu2InputDelegate.initialize();
        _itemId = itemId;
        _itemLabel = itemLabel;
    }

    function onSelect(optionItem) {
        var itemLabel = optionItem.getLabel();

        if(itemLabel.equals(HomeMenu2Delegate.TEXT_DELETE)) {
            StorageHandler.deleteItem(_itemLabel);
            HomeView.openHomeView();
        } else {
            WatchUi.pushView(new WatchUi.TextPicker(_itemLabel), new $.KeyboardListener(_itemId), WatchUi.SLIDE_DOWN);
        }
    }
}