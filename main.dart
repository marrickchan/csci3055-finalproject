import 'dart:html';
import 'dart:core';

// Variables for DOM Elements
DivElement searchDisplay = querySelector('#searchArea'); // div element on page for where search results are shown
DivElement cardDisplay = querySelector('.card-block-results'); // div element on page where cards are shown in the searchDisplay
DivElement close = querySelector('#closeSearch'); // div element on page for close button to close search results
InputElement searchField = querySelector('#searchField'); // text field where users enter search
ParagraphElement preview = querySelector('#searchPreview'); // paragraph in searchDisplay that shows search terms after a search is conducted
ElementList<ImageElement> searched = querySelectorAll('.tcg-preview'); // search index
String resultingImages = ""; // Search Results
String search;

void main() {
	// Search results are hidden by default
	searchDisplay.hidden = true;

	// Update search while user is searching in the search field
	searchField.onChange.listen(updateSearch);
	searchField.onInput.listen(getSearch);

	// On click of [x], close search results section
	close.onClick.listen(hideSearch);
}

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

void getSearch(Event e){
	// Only update search values when search is hidden
	if(searchDisplay.hidden == true){
		// Set Search Results to text entered in search box
		search = (e.target as InputElement).value;
		preview.text = search;
	}

}

void viewSearch(){
	searchDisplay.hidden = false;
}

void hideSearch(Event e){
	searchDisplay.hidden = true;

	// When closing search, clear all search results
	search = '';
	resultingImages = '';
}

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