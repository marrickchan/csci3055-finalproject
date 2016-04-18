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
  * The problem I am addressing is internal webpage searching. 
    * To be able to search for text within a webpage easily without the Ctrl+F feature on browsers.
    * To be able to esarch for a keyword within the entire website. 
    * To be able to search text on images (extra).
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

6. Code Walk
  * Main framework
    * Variables
    ```Dart
    "Dart sample code"
    ```
    * Functions
    ```Dart
    "Dart sample code"
    ```

  * Main search feature (within webpage)

  ```Dart
  "Dart main function walkthrough"
  ```

  * Major search feature (within website)
  ```Dart
  "Dart extra function walkthrough"
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

> Project Submitted: TBA