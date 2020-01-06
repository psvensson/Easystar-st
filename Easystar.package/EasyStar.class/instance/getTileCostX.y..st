accessing
getTileCostX: x y: y
	| rv |
	rv := pointsToCost at: x@y ifAbsent: [1].
	^ rv