initialize
initialize
	syncEnabled := false.
	pointsToAvoid := Dictionary  new.
	costMap := Dictionary  new.
	pointsToCost := Dictionary   new.
	directionalConditions := Dictionary   new.
	allowCornerCutting := true.	
	instances := Dictionary new.
	instanceQueue := OrderedCollection new.
	iterationsPerCalculation := 1000000.
	diagonalsEnabled :=  false.
	maxX := 0.
	maxY := 0.
	offset := 0@0
	