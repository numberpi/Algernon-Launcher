comparison
nameLessThan: anItem given: aLowercaseString

	| me other |
	me := self lowerCaseName beginsWith: aLowercaseString.
	other := anItem lowerCaseName beginsWith: aLowercaseString.
	(me and: [other not]) ifTrue: [^ true].
	(other and: [me not]) ifTrue: [^ false].
	^ #equals