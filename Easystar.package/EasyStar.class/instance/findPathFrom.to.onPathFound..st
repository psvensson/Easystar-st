accessing
findPathFrom: pos1 to: pos2 onPathFound: callback
	| endTile instance instanceId |
	pos1 = pos2
		ifTrue: [ callback value: Array new ]
		ifFalse: [ 
			endTile := collisionGrid at: pos2.
			(acceptableTiles includes: endTile) ifFalse: [ callback value: nil ].
			instance := EasyStarInstance new.
			instance
				startX: pos1 x;
				startY: pos1 y;
				endX: pos2 x;
				endY: pos2 y;
				callback: callback.
			instance openList add: (self
					 coordinateToNode: instance
					 x: instance startX
					 y: instance startY
					 parent: nil
					 cost: self straight_cost).
			instanceId := self class nextInstanceId.
			instances at: instanceId ifAbsentPut: instance.
			instance id: instanceId.
			instanceQueue add: instanceId.
			^ instanceId ]