accessing
manhattanCetTileCost: instance x: x y: y searchNodeX: sx searchNodey: sy searchNode: searchNode
	self
		checkAdjacentNode: instance
		searchNode: searchNode
		x: x
		y: y
		cost: (self straight_cost) * (self getTileCostX: sx y: sy)