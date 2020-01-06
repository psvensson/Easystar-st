test - accessing source
testPathWithCornerCutting
	| easyStar map |
	easyStar := EasyStar new.
	easyStar diagonalsEnabled: true.
	map := { 
		       (Array
			        with: 1
			        with: 0
			        with: 0
			        with: 0
			        with: 0).
		       (Array
			        with: 0
			        with: 1
			        with: 0
			        with: 0
			        with: 0).
		       (Array
			        with: 0
			        with: 0
			        with: 1
			        with: 0
			        with: 0).
		       (Array
			        with: 0
			        with: 0
			        with: 0
			        with: 1
			        with: 0).
		       (Array
			        with: 0
			        with: 0
			        with: 0
			        with: 0
			        with: 1) }.
	easyStar setGrid: map.
	easyStar allowCornerCutting: true.
	easyStar diagonalsEnabled: true.
	easyStar acceptableTiles: { 1 }.
	easyStar findPathFrom: 1 @ 1 to: 5 @ 5 onPathFound: [ :path | 
		self assert: path isEmpty not.
		self assert: path size equals: 5 .
		self assert: (path at: 1) x equals: 1.
		self assert: (path at: 1) y equals: 1.
		self assert: (path at: 4) x equals: 4.
		self assert: (path at: 4) y equals: 4].
	easyStar calculate