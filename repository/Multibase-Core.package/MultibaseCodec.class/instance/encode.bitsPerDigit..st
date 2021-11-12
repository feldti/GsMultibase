encoding
encode: aByteArray bitsPerDigit: bpd 
	| numberOfDigits intValue shift reversedEncoding leadingZeros |
	self assert: aByteArray isNotEmpty.
	numberOfDigits := ((aByteArray size * 8) + (bpd-1)) // bpd.
	shift := (numberOfDigits * bpd) - (aByteArray size * 8).
	self assert: shift >= 0.
	intValue := aByteArray asInteger bitShift: shift.
	reversedEncoding := String streamContents: [ :stream |
		self printReversed: intValue on: stream ].
	leadingZeros := self alphabet first asString
							repeat: (numberOfDigits - reversedEncoding size).
	^ leadingZeros, reversedEncoding reversed