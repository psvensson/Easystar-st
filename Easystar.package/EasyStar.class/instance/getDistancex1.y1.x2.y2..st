accessing
getDistancex1: x1 y1: y1 x2: x2 y2: y2
	| dx dy |
	dx := (x1 - x2) abs.
	dy := (y1 - y2) abs.
	diagonalsEnabled
		ifTrue: [ 
			dx < dy
				ifTrue: [ ^ self diagonal_cost * dx + dy ]
				ifFalse: [ ^ self diagonal_cost * dy + dx ] ]
		ifFalse: [ ^ dx + dy ]