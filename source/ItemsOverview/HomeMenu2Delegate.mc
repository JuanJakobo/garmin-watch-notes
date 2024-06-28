import Toybox.WatchUi;
import Toybox.System;
import Toybox.Lang;


class HomeMenu2Delegate extends WatchUi.Menu2InputDelegate {

    private const ITEM_MENU_TITLE as String = "Options";
    public static const TEXT_EDIT as String = "edit";
    public static const ID_EDIT as Integer = 0;
    public static const TEXT_DELETE as String = "delete";
    public static const ID_DELETE as Integer = 1;


    function initialize() {
        Menu2InputDelegate.initialize();
    }

    function onSelect(item) {
        var itemId = item.getId();
        var itemLabel = item.getLabel();

        if(itemLabel.equals(HomeView.TEXT_ADD)) {
            itemLabel = "";
            WatchUi.pushView(new WatchUi.TextPicker(itemLabel), new $.KeyboardListener(itemId), WatchUi.SLIDE_DOWN);
        } else {
            var menu = new WatchUi.Menu2({:title=>ITEM_MENU_TITLE});
            menu.addItem(
                new MenuItem(
                    TEXT_EDIT,
                    "",
                    ID_EDIT,
                    {}
                )
            );
            menu.addItem(
                new MenuItem(
                    TEXT_DELETE,
                    "",
                    ID_DELETE,
                    {}
                )
            );
            var delegate = new ItemOptionMenu2Delegate(itemId, itemLabel);
            WatchUi.pushView(menu, delegate, WatchUi.SLIDE_IMMEDIATE);
        }
    }

    function onBack() {
        System.exit();
    }
}
