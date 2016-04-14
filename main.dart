import 'dart:html';

DivElement searchDisplay = new DivElement();
InputElement searchField = new InputElement();
DivElement close = new DivElement();
ParagraphElement preview = new ParagraphElement();

void main() {
	// Creating Variables for DOM elements
	searchDisplay = querySelector('#searchArea');
	searchField = querySelector('#searchField');
	close = querySelector('#closeSearch');
	preview = querySelector('#searchPreview');
	// Update search while user is searching in the search field
	searchDisplay.hidden = true;
	searchField.onChange.listen(updateSearch);
	close.onClick.listen(hideSearch);
}

void updateSearch(Event e){
	// Set Search Results to text entered in search box
	// Make search area visible before displaying
	viewSearch();
	preview.text = (e.target as InputElement).value;
	// Clear search after search is conducted
	(e.target as InputElement).value = '';
}

void viewSearch(){
	searchDisplay.hidden = false;
}

void hideSearch(Event e){
	searchDisplay.hidden = true;
}