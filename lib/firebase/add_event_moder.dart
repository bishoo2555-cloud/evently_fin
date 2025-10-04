class EventModel{
  static const String collectionName = 'events';
  String id ;
  String title;
  String decription;
  String eventName ;
  String eventImage;
  DateTime eventdateTime ;
  String eventTime ;
  bool isFav ;
  EventModel({
    this.id = '',
    required this.title,
    required this.decription,
    required this.eventName,
    required this.eventdateTime,
    required this.eventImage,
    required this.eventTime,
    this.isFav = false
});

  EventModel.fromJson(Map<String , dynamic> data):this(
    id: data['id'],
    decription: data['des'] ,
    eventdateTime: DateTime.fromMillisecondsSinceEpoch(data['event_date_time']),
    eventImage:data['event_image'] ,
    eventName: data['event_name'],
    eventTime: data['event_time'],
    title:data['title'] ,
    isFav: data['if_fav'],
  );
Map<String , dynamic> toJson(){
  return {
    'id' : id ,
    'des' : decription ,
    'title' : title ,
    'event_name' : eventName ,
    'event_image' : eventImage ,
    'event_date_time' : eventdateTime.millisecondsSinceEpoch ,
    'event_time' : eventTime ,
    'if_fav' : isFav ,

  };
}
  }
