actions
search

	| searchString textFieldContents |
	textFieldContents := self typeObject textField contents asString.
	textFieldContents ifEmpty: [ ^ true ].
	searchString := textFieldContents allButFirst withBlanksTrimmed.
	^ SystemNavigation default browseMethodsWithSourceString: searchString.
		