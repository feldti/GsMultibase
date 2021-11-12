decoding
decode: aString bitsPerDigit: bpd 
	| intValue numberOfBytes bytes |
	numberOfBytes := aString size * bpd // 8.
	intValue :=
		(self decodeToInteger: aString)
			bitShift: ((aString size * bpd) \\ 8) negated.
	bytes := intValue asByteArray.
	^ (ByteArray new: numberOfBytes - bytes size), bytes