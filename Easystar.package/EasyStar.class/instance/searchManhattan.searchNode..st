accessing
searchManhattan: instance searchNode: searchNode
	searchNode y > 1 ifTrue: [ 
		self
			manhattanCetTileCost: instance
			x: 0
			y: -1
			searchNodeX: searchNode x
			searchNodey: searchNode y - 1
			searchNode: searchNode ].
	(searchNode x < maxX) ifTrue: [ 
		self
			manhattanCetTileCost: instance
			x: 1
			y: 0
			searchNodeX: searchNode x + 1
			searchNodey: searchNode y 
			searchNode: searchNode ]	.
	(searchNode y < maxY) ifTrue: [ 
		self
			manhattanCetTileCost: instance
			x: 0
			y: 1
			searchNodeX: searchNode x
			searchNodey: searchNode y + 1
			searchNode: searchNode ]		.
	searchNode x > 1 ifTrue: [ 
		self
			manhattanCetTileCost: instance
			x: -1
			y: 0
			searchNodeX: searchNode x - 1
			searchNodey: searchNode y 
			searchNode: searchNode ]			