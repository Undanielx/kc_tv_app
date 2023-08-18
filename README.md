# kv_tv_app

This project is a SmartTV app developed with Flutter for Android Tv.
KC-Tv: the app for the Kansas City Chiefs Kingdom.

## Features
The app is composed by three screens.

### First screen: start_screen.dart
It's the main screen that contains:
   * An AppBar with the title of the app and the current hour, obtained from the SmartTv.
   * A carousel section with cards that show random suggestions to watch.
   * A button tab navigation with three categories of shows.

### Secondary screens
This screens shows the categories of the different type of shows that the user can watch on the Smart Tv. There are one secondary screen for each category.
The AppBar contains a Cancel button, so the user returns to the main screen, and a display of the current hour.
The body of this screens shows the list with details of the tv shows related with each category.

### Play screen
This screen contains a video player streaming from youtube of the card selected.


- - - -

## Packages

This project requires the next packages from pub.dev:
 * flutter_intl version 0.0.1
 * intl version 0.18.1
 * youtube_player_flutter 8.1.2 
     
    