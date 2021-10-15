decoding
decodeWithLeadingZeros: aString 
	| withoutLeadingZeros numberOfLeadingZeros intValue bytes |
	withoutLeadingZeros := aString trimLeft: [ :char | char = self alphabet first ].
	numberOfLeadingZeros := aString size - withoutLeadingZeros size.
	intValue := self decodeToInteger: withoutLeadingZeros.
	bytes := intValue asByteArray.
	^ (ByteArray new: numberOfLeadingZeros), bytes
