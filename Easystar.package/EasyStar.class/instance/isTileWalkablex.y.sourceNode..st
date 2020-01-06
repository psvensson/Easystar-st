accessing
isTileWalkablex: x y: y sourceNode: sourceNode
	| conditions currentTile |
	conditions := directionalConditions at: x @ y ifAbsent: [  ].
	conditions
		ifNotNil: [ 
			| direction |
			direction := self
				             calculateDirectionx: sourceNode x - x
				             y: sourceNode y - y.
			conditions do: [ :condition | 
				condition = direction ifTrue: [ ^ true ] ].
			^ false ]
		ifNil: [ 
			currentTile := collisionGrid at: x @ y ifAbsent: [  ].
			acceptableTiles do: [ :tile | 
				"Transcript show: 'acceptable tile ',(tile asString),' and ',(currentTile asString),' for ',((x@y) asString);cr."
				tile = currentTile ifTrue: [					
					 ^ true ] ] ].
	^ false