  
  import 'package:kc_tv_app/model/item.dart';

class music{

    List<Item> items = <Item>[];

    music();

    music.fromJsonList( List<dynamic> jsonList ){
      //if (jsonList == null ) return;

      for (var dato in jsonList){
        final item =  Item.fromJsonMap(dato);
        items.add(item);
      }
    }

}