# CSCI 3055 Programming Languages Final Project

***

In my final project, I will be investigating _Google Dart_. 

Being a regular user on the web, one thing that may be difficult is finding what you want. For many reasons, certain items on a webpage may be difficult to find for example text may be in a picture, text on a component that isn't displayed and many more. The problem I will attempt to solve is to create a in-house search feature from within a webpage. 

***

The requirements in this project are as follows:

1. Github Repo
  * Located: [Here](http://github.com/marrickchan/csci3055-finalproject "CSCI 3055 Final Project")

2. Activities
  * Log of frequent updates to the git repo. Changes will be marked here along with a date.
  * March 14th, 2016 
    * Added initial README.md to display 
  * March 15th, 2016 
    * Decided on language to use
    * Updated README.md with problem to solve
    * Updated README.md to display to do
    * Added brief entries into corresponding headings. 
  * April 4th, 2016
    * Created a layout for initial webpage
    * Added initial layout with CSS
  * April 6th, 2016
    * Edited layout and create main content section
  * April 7th, 2016
    * Added pictures for webpage indexing
  * April 9th, 2016
    * Added search field on top bar for use after indexing.
    * Created initial Dart file for the webpage.
  * April 10th, 2016
    * Created folders for testing, did not work
  * April 11th, 2016
    * Created package which is not going to be used (found out later)
  * April 14th, 2016
    * Found error with compiling to javascript and got cross-browser compatibility working
  * April 16th, 2016
    * Add main data structure for searching
    * Create function for searching in list
      * Ran into issue with printing elements (possible it retrieves just a pointer to the element rather than the element itself)
  * April 18th, 2016
    * Add final functionality for search
      * Use search string to search for text
      * Add outerHtml to string sent back to a result
      * Result gets put into innerHtml for search area

3. Problem Statement and Language Selection
  * The problem I am addressing is internal webpage image searching.  
    * To be able to search text on images
  * The language I chose to address this issue is _Google Dart_ because:
    * Familiar/simple syntax
    * Ability to compile to JavaScript for compatibility with browsers

4. Brief Survey of Alternatives
  * As Dart compiles into _JavaScript_, that may be an alternative.
  * My second choice was _ClojureScript_

5. Build Tools
  * The main tools used for _Google Dart_ include:
    * DartPad - website used to run and learn sample code
    * dart2js - compiler to compile Dart into JavaScript
    * Sublime - text editor for website
    * dart:html API - [dart:html library](https://api.dartlang.org/1.13.0/dart-html/dart-html-library.html "dart:html library")
    * dart:core API - [dart:core library](https://api.dartlang.org/stable/1.15.0/dart-core/dart-core-library.html "dart:core library")

6. Code Walk
  * Main framework
    * Variables
      * The variables contained here are the variables used for grabbing certain elements on the webpage
      ```Dart
      // Variables for DOM Elements
      DivElement searchDisplay = querySelector('#searchArea'); // div element on page for where search results are shown
      DivElement cardDisplay = querySelector('.card-block-results'); // div element on page where cards are shown in the searchDisplay
      DivElement close = querySelector('#closeSearch'); // div element on page for close button to close search results
      InputElement searchField = querySelector('#searchField'); // text field where users enter search
      ParagraphElement preview = querySelector('#searchPreview'); // paragraph in searchDisplay that shows search terms after a search is conducted
      ElementList<ImageElement> searched = querySelectorAll('.tcg-preview'); // search index
      ```
      * The variables contained here are the variables used for the search (search term, search results in HTML)
      ```Dart
      String resultingImages = ""; // Search Results
      String search;
      ```
    * Functions
      * This first function is the main function. Here I set the search results to be hidden, set listeners to the search field and te close button.
      ```Dart
      void main() {
        // Search results are hidden by default
        searchDisplay.hidden = true;

        // Update search while user is searching in the search field
        searchField.onChange.listen(updateSearch);
        searchField.onInput.listen(getSearch);

        // On click of [x], close search results section
        close.onClick.listen(hideSearch);
      }
      ```
      * There are two helper functions. The first one displays the search results. The results display area is hidden by default so we have to show it when the user searches.
      ```Dart
      void viewSearch(){
        searchDisplay.hidden = false;
      }
      ```
      * The other helper function closes the search area when the x is pressed to close the search. It also results the search term and clears the String used to display results
      ```Dart
      void hideSearch(Event e){
        searchDisplay.hidden = true;

        // When closing search, clear all search results
        search = '';
        resultingImages = '';
      }
      ```

  * Main search feature (within webpage)
    * There are 3 functions used to create the search functionality. 
    * First are the two listeners for the search field. The first one listens for input and updates the search term as the user types. This is done in the back so nothing is shown to the user.
    ```Dart
    void getSearch(Event e){
      // Only update search values when search is hidden
      if(searchDisplay.hidden == true){
        // Set Search Results to text entered in search box
        search = (e.target as InputElement).value;
        preview.text = search;
      }
    }
    ```
    * The second function triggers on change of the search field (ie. press enter) and will conduct a search with the search value, show the search results area and display the results. After that, the search field is cleared out. 
    ```Dart
    void updateSearch(Event e){
      // Make search area visible AFTER getting search results and displaying them in the search
      viewSearch();
      // Get search results
      resultingImages = searchResults(search);
      // Display Search Results
      cardDisplay.innerHtml = resultingImages;
      // Clear search after search is conducted
      (e.target as InputElement).value = '';
    }
    ```
    * The third function is the actual searching. It returns a string which contains the HTML code of all the cards that contain the search term, non case sensitive
    ```Dart
    String searchResults(String searchTerm){
      String results = "";
      for(var card in searched){
        print(card.outerHtml);
        if(card.outerHtml.toLowerCase().contains(searchTerm.toLowerCase())){
          results = results + card.outerHtml;
          print("inside loop");
          print(results);
        }
      }

      return results;
    }
    ```

7. Relations to the Course

8. Live Demo
  * In the demo, I have provided details regarding...

***

## To Do

- [x] Create initial webpage with usable features
  * Search feature displays new section when you press enter
  * Close button on the search section when clicked
- [x] Implement _Google Dart_ pop-up functionality in browser.
  * Changed to a more simplistic view. New section appears on the top of the page instead of overlaying
- [x] Implement _Google Dart_ input functionality.
  * Search value gets passed into Google Dart to be used for search
- [x] Implement indexing for items on webpage.
  * All items that require searching are tagged with the tcg-preview class so that they can all be put into an ElementList
- [ ] Optimize webpage loading if required.
- [x] Implement iteration/searching for indexed items.
- [ ] Implement webpage hightlighting for search.

## To Do - Extras

- [ ] Implement indexing over entire website.
- [ ] Implement iteration/searching for indexed items on entire website.

***


> Created by Marrick Chan

> For CSCI 3055 - Final Project

> Project Started: March 9th, 2016

> Project Submitted: April 20th, 2016