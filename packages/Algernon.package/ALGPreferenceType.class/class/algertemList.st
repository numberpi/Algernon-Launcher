algertem lists
algertemList

	| categories algertems preferencesBrowser |
	algertems := OrderedCollection new.
	preferencesBrowser := PreferenceBrowser new.
	categories := preferencesBrowser categoryList.
	categories
		remove: '-- all --';
		remove: '-- search results --';
		do: [:category | algertems add:
			(ALGItem withAlgertype:
				(self with: (ALGPreferenceBrowserCategoryObject forCategory: category)))].
	preferencesBrowser allPreferences
		do: [:preference | algertems add:
			(ALGItem withAlgertype:
				(self with: (ALGPreferenceBrowserPreferenceNameObject
					name: preference name
					category: preference categoryList first)))].
	^ algertems

