accessing
stopAvoidingAdditionalPointX: x y: y
	(pointsToAvoid at: y) ifNil: [ pointsToAvoid at: y put: Array new ].
	(pointsToAvoid at: y) at: x put: nil