other
runTestForReferenceDatasetFrom: encodings
	|  bytes |
	
	bytes := (encodings at: #encoding) asByteArray.
	MultibaseCodec allSubclasses do:
		[ :codecClass |
			| codec encodedReferenceValue decoded encoded |
			codec := codecClass new.
			encodedReferenceValue := encodings at: codec name ifAbsent: [ nil ].
			encodedReferenceValue notNil
				ifTrue:[
					self assert: encodedReferenceValue first equals: codec code.
					decoded := codec decode: encodedReferenceValue allButFirst.
					self assert: decoded equals: bytes.
					encoded := codec encode: bytes.
					self assert: encoded asLowercase equals: encodedReferenceValue allButFirst asLowercase 
				]
	]
