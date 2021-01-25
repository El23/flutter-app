import 'package:flutter_event_app/models/date_model.dart';

List <DateModel> getDates(){
  List<DateModel> dates ;
  DateModel dateModel = new DateModel();

  dateModel.date ="10";
  dateModel.weekDay = "Sun";
  dates.add(dateModel);
  dateModel = new DateModel();

  dateModel.date ="11";
  dateModel.weekDay = "Mon";
  dates.add(dateModel);
  dateModel = new DateModel();

  dateModel.date ="12";
  dateModel.weekDay = "Tue";
  dates.add(dateModel);
  dateModel = new DateModel();

  dateModel.date ="13";
  dateModel.weekDay = "Wed";
  dates.add(dateModel);
  dateModel = new DateModel();

  dateModel.date ="14";
  dateModel.weekDay = "Thu";
  dates.add(dateModel);
  dateModel = new DateModel();

  dateModel.date ="15";
  dateModel.weekDay = "Fri";
  dates.add(dateModel);
  dateModel = new DateModel();

  dateModel.date ="16";
  dateModel.weekDay = "Sat";
  dates.add(dateModel);
  dateModel = new DateModel();
return dates;
}