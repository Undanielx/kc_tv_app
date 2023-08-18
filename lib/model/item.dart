class Item{

  late String url;
  late String title;
  late String mini;
  late String duration;
  late String date;
  late String description;
  

   Item({ required this.url, 
          required this.title, 
          required this.mini,
          required this.duration,
          required this.date,
          required this.description
    });

    Item.fromJsonMap(Map<String, dynamic> json ){
     url        = json['url'];
     title      = json['title'];
     mini       = json['mini'];
     duration   = json['duration'];
     date       = json['date'];
     description = json['description'];
  }

}