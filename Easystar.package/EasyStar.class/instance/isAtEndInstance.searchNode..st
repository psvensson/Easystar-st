accessing
isAtEndInstance: instance searchNode: searchNode
	^ (instance endX = searchNode x) and: (instance endY = searchNode y)