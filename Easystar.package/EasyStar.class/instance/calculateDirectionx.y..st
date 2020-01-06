accessing
calculateDirectionx: diffX y: diffY
	(diffX = 0 and: diffY = -1) ifTrue: [ ^ 'TOP' ].
	(diffX = 1 and: diffY = -1) ifTrue: [ ^ 'TOP_RIGHT' ].
	(diffX = 1 and: diffY = 0) ifTrue: [ ^ 'RIGHT' ].
	(diffX = 1 and: diffY = 1) ifTrue: [ ^ 'BOTTOM_RIGHT' ].
	(diffX = 0 and: diffY = 1) ifTrue: [ ^ 'BOTTOM' ].
	(diffX = -1 and: diffY = 1) ifTrue: [ ^ 'BOTTOM_LEFT' ].
	(diffX = -1 and: diffY = 0) ifTrue: [ ^ 'LEFT' ].
	(diffX = -1 and: diffY = -1) ifTrue: [ ^ 'TOP_LEFT' ].