actions
createListOfAlgeractions

	| preference |
	preference := self typeObject.
	^ self createSortedListFrom: { self createActionOpenFor: preference }