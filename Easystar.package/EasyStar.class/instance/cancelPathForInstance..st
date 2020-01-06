accessing
cancelPathForInstance: id 
	(instances includesKey: id) ifTrue: [ 
		instances removeKey: id. 
		^ true].
	^ false