class APIConst {
  static const String address =
      'https://api.openweathermap.org/data/2.5/weather?q=los+angeles,&appid=41aa18abb8974c0ea27098038f6feb1b';
  // Сайтты чакыруу максатында getIcon функциясы түзүлдү жана
  // String iconCode иконканы алуу үчүн, int size иконканын размерин чоңойтуу үчүн
  static String getIcon(String iconCode, int size) {
    // чакырылган сайттын ичиндеги wn жана @${size}x иконканын размерин 4х кылуу үчүн жазылды
    return 'https://openweathermap.org/img/wn/$iconCode@${size}x.png';
  }

   static String latLongaddres(double lat, double long) =>
      'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$long&exclude=hourly,daily,minutely&appid=41aa18abb8974c0ea27098038f6feb1b';
}
