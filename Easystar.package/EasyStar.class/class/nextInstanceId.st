generating
nextInstanceId
	| rv |
	instanceId ifNil: [ instanceId := 1 ].
	rv := instanceId.
	instanceId := instanceId + 1.
	^ rv