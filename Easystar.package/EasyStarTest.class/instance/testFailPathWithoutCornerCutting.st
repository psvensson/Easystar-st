test - accessing source
testFailPathWithoutCornerCutting
	| easyStar map |
	easyStar := EasyStar new. 
	easyStar diagonalsEnabled: true.
	map := {	Array with:1 with: 0 with: 0 with: 0 with: 0.
				Array with:0 with: 1 with: 0 with: 0 with: 0.
				Array with:0 with: 0 with: 1 with: 0 with: 0.
				Array with:0 with: 0 with: 0 with: 1 with: 0.
				Array with:0 with: 0 with: 0 with: 0 with: 1. } .
	easyStar setGrid: map.
	easyStar allowCornerCutting: false.
	easyStar diagonalsEnabled: true.
	easyStar acceptableTiles: { 1 }.
	easyStar findPathFrom: 1@1 to: 5@5 onPathFound: [ :path |
		 self assert: path isNil ]. 
	easyStar calculate.  