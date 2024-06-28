import Toybox.Application.Storage;
import Toybox.Lang;

class StorageHandler {

    private static var _storage_array_name as String = "items";

    public static function getItems() as Array{
        var items = Storage.getValue(_storage_array_name);
        if(items == null){
            items = [];
        }
        return  items;
    }

    public static function addItem(itemId as Integer, itemLabel as String) {
        var items = getItems();
        if(itemId == -1){
            items.add(itemLabel);
        }else{
            items[itemId] = itemLabel;
        }
        Storage.setValue(_storage_array_name, items);
    }
    
    public static function deleteItem(itemLabel as String) {
        var items = getItems();

        items.remove(itemLabel);

        Storage.setValue(_storage_array_name, items);
    }
}