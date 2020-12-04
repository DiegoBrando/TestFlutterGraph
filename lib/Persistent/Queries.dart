//https://stackoverflow.com/questions/51039602/how-to-format-an-interploated-string

String alllocationsquery='''{
  locations{
    locationid
    address
  }
}''';

String locationdetails='''{
  location(id:"{{id}}"){
    address
    phone
    details
    reviews{
      user{
        username
        profilepicture
      }
      stars
      comment
    }
   
  }
}''';



