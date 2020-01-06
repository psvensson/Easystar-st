test - accessing source
testPreferDiagonalPath
	| easyStar map |
	easyStar := EasyStar new. 
	map := {	Array with:0 with: 1 with: 0.
				Array with:0 with: 0 with: 0.
				Array with:0 with: 0 with: 0 } .
	easyStar setGrid: map.
	easyStar acceptableTiles: { 0 }.
	easyStar diagonalsEnabled: true.
	easyStar findPathFrom: 1@2 to: 3@2 onPathFound: [ :path |
		self assert: path isNotNil.
		self assert: (path at: 2) x equals: 2.
		self assert: (path at: 2) y equals: 2  ]. 
	easyStar calculate.  