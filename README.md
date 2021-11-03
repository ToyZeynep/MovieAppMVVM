### This movie application that I created using [OMDb Api](https://www.omdbapi.com/) is an application where you can search movies by name and bookmark your favorite movies.

# Table of contents
1. [Features](#Features)
2. [Used Methods and Libraries](#UsedMethodsandLibraries)
4. [Usage](#Usage)
5. [Requiremonts](#Requiremonts)
6. [Installation](#Installation)
7. [Screen Shots](#ScreenShots)
8. [Communication](#Communication)

## Features<a name="Features"></a>
- Programmatically UI design
- Capturing the same image for different resolution devices with responsive screen design
- Compliance with Apple Best Practice Guide design recommendations
- Developed with Reactive programming techniques using Rx libraries
- Rest Api operations are done using Alamofire library
- It has high testability and readability with MVVM and Clean architecture.
- Cross-screen root control without using storyboard with the help of XCoordinator library
- Keeping and processing data in local memory with RealmSwift library
- With the KingFisher library, the images are kept in the cache and the loading of the images is made easier
- Repeated code blocks recommended for clean coding are combined in flexible methods
- Pagination structure is used to increase performance on list screens
- Ability to change list view sizes in Run Time
- Care was taken to ensure that in-app method and variable naming are in English and comprehensible

## Used Methods and Libraries <a name="UsedMethodsandLibraries"></a>
- [Alamofire](https://github.com/Alamofire/Alamofire)
- [RxSwift](https://github.com/ReactiveX/RxSwift)
- [RxCocoa](https://github.com/ReactiveX/RxSwift/tree/main/RxCocoa)
- [RxGesture](https://github.com/RxSwiftCommunity/RxGesture)
- [XCoordinator](https://github.com/quickbirdstudios/XCoordinator)
- [RealmSwift](https://github.com/realm/realm-cocoa)
- [KingFisher](https://github.com/onevcat/Kingfisher)
- [SnackBar](https://github.com/ahmedAlmasri/SnackBar.swift)
 
## Usage <a name="Usage"></a>
Movie App is a movie finder app. Search is made by typing a few words from the movie name in the search bar. In response, a list comes up with pictures, names and dates of the movies. The button on the top right of the cell adds the movie to favorites to store it in the database it created in the local memory, and removes the attached ones. The button on the top right of the view takes you to the favorites view. Favorite movies are displayed here. When one of the cells is clicked on the search view and the favorites view, it will take you to the details view. On the details view, there are details such as the summary of the movie and the imdb score.

## Requiremonts <a name="Requiremonts"></a>
Versions I use:
- `ruby 2.6.3p62`
- `cocoapods-1.11.2` 

## Installation <a name="Installation"></a>
`pod install` is written to the file path of the application in the terminal and the application is run on xcode


## Screen Shots <a name="ScreenShots"></a>
 <table>
  <tr>
    <td>Movie List View</td>
    <td>Movie Details View</td>
    <td>Favorites View</td>

   
  </tr>
  <tr>
   <td><img src="https://user-images.githubusercontent.com/75203610/139830599-f6a3aed6-2b6d-4aca-a188-f0fb8d4f08f6.jpg" width=280 height=480></td>
    <td><img src="https://user-images.githubusercontent.com/75203610/139830634-db21ed62-c8b9-48c8-bbff-728215de926f.jpg" width=280 height=480></td>
    <td><img src="https://user-images.githubusercontent.com/75203610/139830442-7a239ea7-acf9-42dc-9987-62182889734c.jpg" width=280 height=480></td>
  </tr>
 </table>


## Communication <a name="Communication"></a>
- [GitHub](https://github.com/SaniyeToy)
- [Linkedln](https://www.linkedin.com/in/saniye-toy/)


