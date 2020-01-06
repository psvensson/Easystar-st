accessing
checkAdjacentNode: instance searchNode: searchNode x: x y: y cost: cost
	| adjacentCoordinateX adjacentCoordinateY node |
	adjacentCoordinateX := searchNode x + x.
	adjacentCoordinateY := searchNode y + y.
	((self noPointsToAvoidX: adjacentCoordinateX y: adjacentCoordinateY) 
		 and: (self
				  isTileWalkablex: adjacentCoordinateX
				  y: adjacentCoordinateY
				  sourceNode: searchNode)) ifFalse: [ ^ self ].
	node := self
		        coordinateToNode: instance
		        x: adjacentCoordinateX
		        y: adjacentCoordinateY
		        parent: searchNode
		        cost: cost.
	node list
		ifNil: [ 
			node list: 'OPEN_LIST'.
			(instance openList) add: node ]
		ifNotNil: [ 
			searchNode costSoFar + cost < node costSoFar ifTrue: [ 
				node costSoFar: searchNode costSoFar + cost.
				node parent: searchNode.
				"instance openList sort" ] ]