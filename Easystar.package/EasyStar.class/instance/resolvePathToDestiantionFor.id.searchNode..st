accessing
resolvePathToDestiantionFor: instance id: instanceId searchNode: searchNode
	| path parent |
	path := OrderedCollection new.
	path add: searchNode x @ searchNode y.
	parent := searchNode parent.
	[ parent isNil not ] whileTrue: [ 
		path addLast: parent x @ parent y.
		parent := parent parent ].
	instance callback value: ((path asArray) reverse).
	instances removeKey:  instanceId .
	instanceQueue removeFirst .