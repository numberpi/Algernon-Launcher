testing
testSettingsNotEmpty

	| settings |
	settings := ALGPreferenceType algertemList.
	self deny: settings isEmpty
	