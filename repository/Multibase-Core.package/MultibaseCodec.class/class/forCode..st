accessing
forCode: aCharacter 
	^ (self allSubclasses
		detect: [ :codec | codec new code = aCharacter ]
		ifNone: [ MultibaseEncodingError signal: 'No codec for code $', aCharacter ])
		new.