testing
testGetAt

	| cache cacheKey items |
	cache := ALGCache new.
	cacheKey := 'testKey'.
	items := { ALGItem new . ALGItem new }.
	cache putItems: items at: cacheKey.
	self assert: items equals: (cache getAt: cacheKey)