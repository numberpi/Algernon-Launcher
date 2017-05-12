actions
createActionDo

	^ ALGAction
			withName: 'search'
			rank: 1
			target: self
			selector: #search
			args: OrderedCollection new