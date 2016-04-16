import 'dart:html';

DivElement searchDisplay = new DivElement(); // div element on page for where search results are shown
DivElement cardDisplay = new DivElement(); // div element on page where cards are shown in the searchDisplay
DivElement close = new DivElement(); // div element on page for close button to close search results
InputElement searchField = new InputElement(); // text field where users enter search
ParagraphElement preview = new ParagraphElement(); // paragraph in searchDisplay that shows search terms after a search is conducted
ElementList<ImageElement> indexedImages = querySelectorAll('.tcg-preview'); // List of all images to search from

void main() {
	// Creating Variables for DOM elements
	searchDisplay = querySelector('#searchArea');
	cardDisplay = querySelector('.card-block-results');
	searchField = querySelector('#searchField');
	close = querySelector('#closeSearch');
	preview = querySelector('#searchPreview');

	// Testing Values for search
	searchResults("Test");

	// Search results are hidden by default
	searchDisplay.hidden = true;

	// Update search while user is searching in the search field
	searchField.onChange.listen(updateSearch);

	// On click of [x], close search results section
	close.onClick.listen(hideSearch);
}

ElementList<ImageElement> searchResults(String searchTerm){
	// Storing search results to return to be displayed
	ElementList<ImageElement> searched = querySelectorAll('.tcg-preview');

	print("before");
	forEach(searched){
		print(searched.toString());
	}

	print("after");



	return searched;
}

void updateSearch(Event e){
	// Set Search Results to text entered in search box
	
	preview.text = (e.target as InputElement).value;
	// Clear search after search is conducted
	(e.target as InputElement).value = '';

	// Make search area visible AFTER getting search results and displaying them in the search
	viewSearch();
}

void viewSearch(){
	searchDisplay.hidden = false;
}

void hideSearch(Event e){
	searchDisplay.hidden = true;
}

