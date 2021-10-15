accessing
allBases 
	^ self allSubclasses
		collect: [ :codec | codec new name ]
