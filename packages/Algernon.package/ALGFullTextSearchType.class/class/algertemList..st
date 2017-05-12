algertem lists
algertemList: textField

	| algertems |
	algertems := OrderedCollection with: (ALGFullTextSearchItem
				withAlgertype: (self with: textField)).
	^ algertems