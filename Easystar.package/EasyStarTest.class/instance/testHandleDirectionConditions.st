test - accessing source
testHandleDirectionConditions
	| easyStar map |
	easyStar := EasyStar new. 
	map := {	Array with:0 with: 1 with: 0.
				Array with:0 with: 0 with: 0.
				Array with:0 with: 0 with: 0 } .
	easyStar setGrid: map.
	easyStar acceptableTiles: { 0 }.
	easyStar diagonalsEnabled: true.
	
	easyStar setDirectionalConditionX: 3 y: 2 allowedDirections: {'TOP'}.
	easyStar setDirectionalConditionX: 2 y: 3 allowedDirections: {'TOP_RIGHT'}.
	easyStar setDirectionalConditionX: 3 y: 3 allowedDirections: {'LEFT'}.
	easyStar setDirectionalConditionX: 2 y: 2 allowedDirections: {'BOTTOM_RIGHT'}.
	easyStar setDirectionalConditionX: 1 y: 2 allowedDirections: {'RIGHT'}.
	easyStar setDirectionalConditionX: 1 y: 1 allowedDirections: {'BOTTOM'}.
	
	easyStar findPathFrom: 3@1 to: 1@1 onPathFound: [ :path |
		self assert: path isNotNil.
		self assert: (path size) equals: 7.
		self assert: (path at: 4) x equals: 3.
		self assert: (path at: 4) y equals: 3  ]. 
	easyStar calculate.  