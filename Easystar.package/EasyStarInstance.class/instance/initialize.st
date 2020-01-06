initialize
initialize
	openList := Heap sortBlock: [ :a :b | 
		            a bestGuessDistance <= b bestGuessDistance ].
	nodeHash := Dictionary new