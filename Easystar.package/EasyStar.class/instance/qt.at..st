accessing
qt: quadTree at: pos 
	^ quadTree get: (Rect x: (pos x) y: (pos y) width: 1 height: 1) data: nil.