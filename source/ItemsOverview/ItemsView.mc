import Toybox.Graphics;
import Toybox.Lang;
import Toybox.WatchUi;

class ItemsView extends WatchUi.View {

    public function initialize() {
        WatchUi.View.initialize();
    }

    //TODO which one to use?
    public function onLayout(dc as Dc) as Void {
    }

    public function onShow() as Void {
    }

    public function onUpdate(dc as Dc) as Void {
        var menu = new WatchUi.Menu();

        menu.setTitle("Items");
        menu.addItem("Item One", :one);
        menu.addItem("Item Two", :two);
        menu.addItem("Add", :add);

        var delegate  = new MenuInputDelegate();
        WatchUi.switchToView(menu, delegate, WatchUi.SLIDE_IMMEDIATE);
        WatchUi.pushView(menu, delegate, WatchUi.SLIDE_IMMEDIATE);
    }
}