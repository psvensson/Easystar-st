test - accessing source
testPathHaveDIfferentIds
	| easyStar map id1 id2 |
	easyStar := EasyStar new.
	easyStar diagonalsEnabled: true.
	map := { 
		       (Array
			        with: 1
			        with: 1
			        with: 0
			        with: 1
			        with: 1).
		       (Array
			        with: 1
			        with: 1
			        with: 0
			        with: 1
			        with: 1).
		       (Array
			        with: 1
			        with: 1
			        with: 0
			        with: 1
			        with: 1).
		       (Array
			        with: 1
			        with: 1
			        with: 1
			        with: 1
			        with: 1).
		       (Array
			        with: 1
			        with: 1
			        with: 1
			        with: 1
			        with: 1) }.
	easyStar setGrid: map.
	easyStar allowCornerCutting: false.
	easyStar diagonalsEnabled: true.
	easyStar acceptableTiles: { 1 }.
	id1 := easyStar
		       findPathFrom: 2 @ 3
		       to: 4 @ 3
		       onPathFound: [ :path |  ].
	id2 := easyStar
		       findPathFrom: 4 @ 3
		       to: 2 @ 3
		       onPathFound: [ :path |  ].
	self assert: id1 ~= id2