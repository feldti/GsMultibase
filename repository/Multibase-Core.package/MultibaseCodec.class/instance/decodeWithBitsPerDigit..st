decoding
decodeWithBitsPerDigit: aString 
	| intValue numberOfBytes bytes |
	self bitsPerDigit ifNil:
		[ self error: 'Codec should define a specific decoder' ].
	numberOfBytes := aString size * self bitsPerDigit // 8.
	intValue :=
		(self decodeToInteger: aString)
			bitShift: ((aString size * self bitsPerDigit) \\ 8) negated.
	bytes := intValue asByteArray.
	^ (ByteArray new: numberOfBytes - bytes size), bytes