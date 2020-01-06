accessing
qt: quadTree at: pos set: data 
	quadTree insert: (Rect x: (pos x) y: (pos y) width: 1 height: 1) data: data.