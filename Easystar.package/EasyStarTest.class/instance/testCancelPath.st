test - accessing source
testCancelPath
	| easyStar map id delay |
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
	id := easyStar
		      findPathFrom: 2 @ 3
		      to: 4 @ 3
		      onPathFound: [ :path | self fail ].
	easyStar cancelPathForInstance: id.
	easyStar calculate.
	delay := Delay forSeconds: 1.
	delay wait.
	self assert: true equals: true