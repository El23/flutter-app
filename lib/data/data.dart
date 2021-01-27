import 'package:flutter_event_app/models/date_model.dart';
import 'package:flutter_event_app/models/event_model.dart';

List <DateModel> getDates(){
  List<DateModel> dates = new List<DateModel>() ;
  DateModel dateModel = new DateModel();

  dateModel.date ="24";
  dateModel.weekDay = "Sun";
  dates.add(dateModel);
  dateModel = new DateModel();

  dateModel.date ="25";
  dateModel.weekDay = "Mon";
  dates.add(dateModel);
  dateModel = new DateModel();

  dateModel.date ="26";
  dateModel.weekDay = "Tue";
  dates.add(dateModel);
  dateModel = new DateModel();

  dateModel.date ="27";
  dateModel.weekDay = "Wed";
  dates.add(dateModel);
  dateModel = new DateModel();

  dateModel.date ="28";
  dateModel.weekDay = "Thu";
  dates.add(dateModel);
  dateModel = new DateModel();

  dateModel.date ="29";
  dateModel.weekDay = "Fri";
  dates.add(dateModel);
  dateModel = new DateModel();

  dateModel.date ="30";
  dateModel.weekDay = "Sat";
  dates.add(dateModel);
  dateModel = new DateModel();
return dates;
}

List<EventModel> getEvents(){
  List<EventModel> events = new List();
  EventModel eventModel = new EventModel();

  eventModel.imgAssetPath = "assets/travel.png";
  eventModel.eventType = " Travel ";
  events.add(eventModel);
   eventModel = new EventModel();

  eventModel.imgAssetPath = "assets/balloon.png";
  eventModel.eventType = " Ballooning ";
  events.add(eventModel);
  eventModel = new EventModel();

  eventModel.imgAssetPath = "assets/tennis.png";
  eventModel.eventType = " Sports ";
  events.add(eventModel);
  eventModel = new EventModel();

return events;

}