test - accessing source
testHandleDirectionConditionsWithoutCornerCutting
	| easyStar map |
	easyStar := EasyStar new. 
	map := {	Array with:0 with: 1 with: 0.
				Array with:0 with: 0 with: 0.
				Array with:0 with: 0 with: 0 } .
	easyStar setGrid: map.
	easyStar acceptableTiles: { 0 }.
	
	easyStar diagonalsEnabled: true.
	easyStar allowCornerCutting: false.
	
	easyStar setDirectionalConditionX: 3 y: 2 allowedDirections: {'TOP'}.
	easyStar setDirectionalConditionX: 2 y: 2 allowedDirections: {'RIGHT'}.
	easyStar setDirectionalConditionX: 1 y: 2 allowedDirections: {'RIGHT'}.
	easyStar setDirectionalConditionX: 1 y: 1 allowedDirections: {'BOTTOM'}.
	
	easyStar findPathFrom: 3@1 to: 1@1 onPathFound: [ :path |
		self assert: path isNil not.
		self assert: (path size) equals: 5.
		self assert: (path at: 3) x equals: 2.
		self assert: (path at: 3) y equals: 2  ]. 
	easyStar calculate.  