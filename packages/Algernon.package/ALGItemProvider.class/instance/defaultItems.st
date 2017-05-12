accessing
defaultItems

	^ self class defaultItems,
		(ALGExpressionType algertemList: self controller),
		(ALGFullTextSearchType algertemList: self controller)
