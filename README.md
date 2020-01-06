# Easystar-st
A port of the JavaScript [EasyStar](https://github.com/prettymuchbryce/easystarjs) package (A* - Dijkstra) package to Smalltalk. 

# Loading
```
Metacello new
    repository: 'github://psvensson/Easystar-st:master';
    baseline: 'Easystar';
    load
```

# Using

Here is a unit test that show how to set up and call Easystar (For more complex examples see the other unit tests in the package);
```
testFindPath
	| easyStar map |
	easyStar := EasyStar new. 
	map := {	Array with:1 with: 1 with: 0 with: 1 with: 1.
				Array with:1 with: 1 with: 0 with: 1 with: 1.
				Array with:1 with: 1 with: 0 with: 1 with: 1.
				Array with:1 with: 1 with: 1 with: 1 with: 1.
				Array with:1 with: 1 with: 1 with: 1 with: 1. } .
	easyStar setGrid: map.
	easyStar acceptableTiles: { 1 }.
	easyStar avoidAdditionalPointX: 3 y: 4. 
	easyStar findPathFrom: 2@3 to: 4@3 onPathFound: [ :path |
		self assert: path isNotNil.
		self assert: path size equals: 7.
		self assert: (path at: 1) x equals: 2.
		self assert: (path at: 1) y equals: 3.
		self assert: (path at: 3) x equals: 2.
		self assert: (path at: 3) y equals: 5 ]. 
	easyStar calculate.  
  ```
