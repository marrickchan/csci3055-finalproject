import 'dart:html';

void main() {
	// Update search while user is searching in the search field
	querySelector('#searchField').onInput.listen(updateSearch);
}

void updateSearch(Event e){
	querySelector('#searchPreview').text = (e.target as InputElement).value;
}