import 'package:flutter_event_app/models/date_model.dart';
import 'package:flutter_event_app/models/event_model.dart';
import 'package:flutter_event_app/models/popular_model.dart';

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


List <EventsPopularModel> getEventsPopular  (){

List<EventsPopularModel> popular = new List <EventsPopularModel>();
EventsPopularModel eventsModelP = new EventsPopularModel();

eventsModelP.imgAssetPass = "assets/images.jpg";
eventsModelP.date = " 27.01.2021";
eventsModelP.description =" camping trip";
eventsModelP.location = " Kharkiv, Symska.str 87";
popular.add(eventsModelP);
eventsModelP = new EventsPopularModel();


eventsModelP.imgAssetPass = "assets/images1.jpg";
eventsModelP.date = " 29.01.2021";
eventsModelP.description =" travel to the islands / vacation";
eventsModelP.location = " Kyiv, Modyl.str 35";
popular.add(eventsModelP);
eventsModelP = new EventsPopularModel();


eventsModelP.imgAssetPass = "assets/images2.jpg";
eventsModelP.date = " 15.02.2021";
eventsModelP.description =" hiking in the mountains";
eventsModelP.location = " Kyiv, Glavn.str 40";
popular.add(eventsModelP);
eventsModelP = new EventsPopularModel();

return popular;

}


























