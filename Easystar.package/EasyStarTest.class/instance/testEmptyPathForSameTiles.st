test - accessing source
testEmptyPathForSameTiles
	| easyStar map |
	easyStar := EasyStar new. 
	map := {	Array with:1 with: 1 with: 0 with: 1 with: 1.
				Array with:1 with: 1 with: 0 with: 1 with: 1.
				Array with:1 with: 1 with: 1 with: 1 with: 1.
				Array with:1 with: 1 with: 1 with: 1 with: 1.
				Array with:1 with: 1 with: 1 with: 1 with: 1. } .
	easyStar setGrid: map.
	easyStar acceptableTiles: { 1 }.
	easyStar findPathFrom: 2@3 to: 2@3 onPathFound: [ :path |
		 self assert: path isNil not.
		self assert: path size equals: 0.  ]. 
	easyStar calculate.  