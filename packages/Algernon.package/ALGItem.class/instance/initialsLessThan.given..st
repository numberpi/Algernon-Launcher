comparison
initialsLessThan: anItem given: aLowercaseString

	| me other |
	me := self initials beginsWith: aLowercaseString.
	other := anItem initials beginsWith: aLowercaseString.
	(me and: [other not]) ifTrue: [^ true].
	(other and: [me not]) ifTrue: [^ false].
	^ #equals
