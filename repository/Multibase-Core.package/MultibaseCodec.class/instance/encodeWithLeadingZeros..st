encoding
encodeWithLeadingZeros: aByteArray 
	| intValue reversedEncoding |
	self assert: aByteArray isNotEmpty.
	intValue := aByteArray asInteger.
	reversedEncoding := String streamContents: [ :stream |
		| index |
		self printReversed: intValue on: stream.
		index := 1.
		[ index < aByteArray size
				and: [ (aByteArray at: index) isZero ] ]
			whileTrue: [
				stream nextPut: self alphabet first.
				index := index + 1 ] ].
	^ reversedEncoding reversed