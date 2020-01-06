accessing
setGrid: grid
	collisionGrid := Dictionary new.
	1 to: grid size do: [ :y | 
		1 to: (grid at: 1) size do: [ :x | | v |
			v := (grid at: y) at: x.
			maxX := maxX max: x.
			maxY := maxY max: y.
			collisionGrid at: x @ y ifAbsentPut: [ v ] ] ]