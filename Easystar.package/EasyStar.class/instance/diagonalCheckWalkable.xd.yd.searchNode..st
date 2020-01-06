accessing
diagonalCheckWalkable: instance xd: xd yd: yd searchNode: searchNode
	| walk1 walk2 cost |
	
	walk1 := self
		         isTileWalkablex: searchNode x
		         y: searchNode y + yd
		         sourceNode: searchNode.
	walk2 := self
		         isTileWalkablex: searchNode x + xd
		         y: searchNode y
		         sourceNode: searchNode.
	"Transcript show:'diagonalCheckWalkable xd ',(xd asString),' yd ',(yd asString),' walk1 ',(walk1 asString),' walk2 ',(walk2 asString) ;cr.	"
	(allowCornerCutting or: (walk1 and: walk2)) ifFalse: [ ^ self ].
	cost := self diagonal_cost
	        * (self getTileCostX: (searchNode x) + xd y: (searchNode y) + yd).
	self
		checkAdjacentNode: instance
		searchNode: searchNode
		x: xd
		y: yd
		cost: cost