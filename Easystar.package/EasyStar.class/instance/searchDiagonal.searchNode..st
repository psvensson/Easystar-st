accessing
searchDiagonal: instance searchNode: searchNode
	"Transcript show:'----- searchDiagonal node x ',(searchNode x asString),' y ',(searchNode y asString),' maxx ',(maxX asString),' maxy ',(maxY asString);cr."
	(searchNode x > 1 and: searchNode y > 1) ifTrue: [ 
		self
			diagonalCheckWalkable: instance
			xd: -1
			yd: -1
			searchNode: searchNode ].
	(searchNode x < maxX and: searchNode y < maxY) ifTrue: [ 
		"Transcript show:'*';cr."
		self
			diagonalCheckWalkable: instance
			xd: 1
			yd: 1
			searchNode: searchNode ].
	(searchNode x < maxX and: searchNode y > 1) ifTrue: [ 
		self
			diagonalCheckWalkable: instance
			xd: 1
			yd: -1
			searchNode: searchNode ].
	(searchNode x > 1 and: searchNode y < maxY) ifTrue: [ 
		self
			diagonalCheckWalkable: instance
			xd: -1
			yd: 1
			searchNode: searchNode ]