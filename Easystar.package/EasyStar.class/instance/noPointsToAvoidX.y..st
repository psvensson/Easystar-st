accessing
noPointsToAvoidX: x y: y
	^ (pointsToAvoid at: x@y ifAbsent: []) isNil 