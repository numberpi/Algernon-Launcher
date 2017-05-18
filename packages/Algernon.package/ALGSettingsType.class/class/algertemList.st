algertem lists
algertemList

	| settings algertems |
	algertems := OrderedCollection new.
	settings := PreferenceBrowser new categoryList.
	settings
		remove: '-- all --';
		remove: '-- search results --';
		do: [ :each | algertems add: (ALGItem withAlgertype: (self with: each))].
	^ algertems

