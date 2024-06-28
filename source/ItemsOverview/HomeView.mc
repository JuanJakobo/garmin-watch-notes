import Toybox.Graphics;
import Toybox.Lang;
import Toybox.WatchUi;

class HomeView extends WatchUi.View {

    private const ITEM_MENU_TITLE as String = "Items";
    public static const TEXT_ADD as String = "add";
    public static const ID_ADD as Integer = -1;

    public function initialize() {
        WatchUi.View.initialize();
    }

    public static function openHomeView() {
        var homeView = new $.HomeView();
        WatchUi.switchToView(homeView, new WatchUi.InputDelegate(), WatchUi.SLIDE_IMMEDIATE);
        WatchUi.pushView(homeView, new WatchUi.InputDelegate(), WatchUi.SLIDE_IMMEDIATE);
    }

    public function onUpdate(dc as Dc) as Void {

        var menu = new WatchUi.Menu2({:title=>ITEM_MENU_TITLE});

        menu.addItem(
            new MenuItem(
                TEXT_ADD,
                "",
                ID_ADD,
                {}
            )
        );

        var items = StorageHandler.getItems();

        if(items == null){
            items = [];
        }

        for (var i = 0; i < items.size(); i += 1) {        
            menu.addItem(
                new MenuItem(
                    items[i],
                    "",
                    i,
                    {}
                )
            );
        }
        var delegate = new HomeMenu2Delegate();
        WatchUi.pushView(menu, delegate, WatchUi.SLIDE_IMMEDIATE);
    }
}