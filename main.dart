import 'dart:html';

void main() {
	// Update search while user is searching in the search field
	query('#searchArea').hidden = true;
	querySelector('#searchField').onChange.listen(updateSearch);
	query('#searchRemove').onClick.listen(hideSearch);
}

void updateSearch(Event e){
	// Set Search Results to text entered in search box
	// Make search area visible before displaying
	viewSearch(1);
	querySelector('#searchPreview').text = (e.target as InputElement).value;
	// Clear search after search is conducted
	(e.target as InputElement).value = '';
}

void viewSearch(x){
	query('#searchArea').hidden = !query('#searchArea').hidden;
}

void hideSearch(Event e){
	query('#searchArea').hidden = query('#searchArea').hidden;
}