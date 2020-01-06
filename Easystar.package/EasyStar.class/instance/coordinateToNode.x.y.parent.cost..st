accessing
coordinateToNode: instance x: x y: y parent: parent cost: cost
	| node simpleDistanceToTarget costSoFar present |
	present := self getNodeHashFor: instance pos: x@y.
	present ifNotNil: [ ^ present ] .
	simpleDistanceToTarget := self
		                          getDistancex1: x
		                          y1: y
		                          x2: instance endX
		                          y2: instance endY.
	costSoFar := parent
		             ifNil: [ 0 ]
		             ifNotNil: [ parent costSoFar + cost ].
	node := EasyStarNode new.
	node
		parent: parent;
		x: x;
		y: y;
		costSoFar: costSoFar;
		simpleDistanceToTarget: simpleDistanceToTarget.
	instance nodeHash at: x@y ifAbsentPut: node.
	^ node