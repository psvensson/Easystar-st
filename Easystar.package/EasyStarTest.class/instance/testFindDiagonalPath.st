test - accessing source
testFindDiagonalPath
	| easyStar map |
	easyStar := EasyStar new. 
	map := {	Array with:1 with: 1 with: 1 with: 1 with: 1.
				Array with:1 with: 1 with: 1 with: 1 with: 1.
				Array with:1 with: 1 with: 1 with: 1 with: 1.
				Array with:1 with: 1 with: 1 with: 1 with: 1.
				Array with:1 with: 1 with: 1 with: 1 with: 1. } .
	easyStar setGrid: map.
	easyStar acceptableTiles: { 1 }.
	easyStar diagonalsEnabled: true.
	easyStar findPathFrom: 1@1 to: 5@5 onPathFound: [ :path |
		 self assert: path isNil not.
		self assert: path size equals: 5.
		self assert: (path at: 1) x equals: 1.
		self assert: (path at: 1) y equals: 1.
		self assert: (path at: 2) x equals: 2.
		self assert: (path at: 2) y equals: 2.
		self assert: (path at: 2) x equals: 2.
		self assert: (path at: 3) y equals: 3.
		self assert: (path at: 3) x equals: 3.
		self assert: (path at: 4) y equals: 4.
		self assert: (path at: 4) x equals: 4.
		self assert: (path at: 5) y equals: 5.
		self assert: (path at: 5) x equals: 5.
		self assert: (path at: 2) y equals: 2    ]. 
	easyStar calculate.  