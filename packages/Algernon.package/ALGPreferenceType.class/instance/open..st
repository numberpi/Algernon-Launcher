actions
open: aPreference

	| browser |
	browser := PreferenceBrowser new.
	(PreferenceBrowserMorph withModel: browser) openInWorld.
	browser selectedCategory: aPreference category.
	aPreference isCategory ifFalse: [| preferenceObject |
		preferenceObject :=
			(browser preferencesInCategory: aPreference category)
				detect: [:preference | preference name = aPreference preferenceName]
				ifNone: [].
		browser selectedPreference: preferenceObject]
	