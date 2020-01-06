accessing
calculate
	| iterationsSoFar instanceId instance searchNode |
	iterationsSoFar := 0.
	[iterationsSoFar < iterationsPerCalculation] whileTrue: [ 
		instanceQueue isEmpty
			ifTrue: [ ^ self ]
			ifFalse: [ 
				iterationsSoFar := iterationsSoFar + 1.
				instanceId := instanceQueue first.
				instance := instances at: instanceId ifAbsent: [].				
				"Transcript show: 'instance ',(instance id asString),' heap size ',(instance openList size asString),' diagonalsEnabled: ',(diagonalsEnabled asString);cr. "
				instance
					ifNil: [ "This instance was cancelled" instanceQueue removeFirst ]
					ifNotNil: [ 
						instance openList isEmpty
							ifTrue: [ "Couldn't find a path" 
								self couldNotFindPathFor: instance id: instanceId ]
							ifFalse: [ 
								searchNode := instance openList removeFirst.
								"Handles the case where we have found the destination"
								(self isAtEndInstance: instance searchNode: searchNode)
									ifTrue: [ 
										self
											resolvePathToDestiantionFor: instance
											id: instanceId
											searchNode: searchNode ]
									ifFalse: [ 
										self searchManhattan: instance searchNode: searchNode.
										diagonalsEnabled ifTrue: [ 
											self searchDiagonal: instance searchNode: searchNode ] ] ] ] ] ] 