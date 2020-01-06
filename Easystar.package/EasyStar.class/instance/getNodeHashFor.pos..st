accessing
getNodeHashFor: instance pos: pos
	^ (instance nodeHash) at: pos ifAbsent: [  ]