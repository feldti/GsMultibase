accessing
forBase: aSymbol 
	^ (self allSubclasses
		detect: [ :codec | codec new name = aSymbol ]
		ifNone: [ MultibaseEncodingError signal: 'No codec for base $', aSymbol ])
		new.
