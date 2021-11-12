encoding
printReversed: anInteger on: aStream
	| intValue quotient remainder |
	intValue := anInteger.
	[ intValue > 0 ] whileTrue: [
		quotient := intValue // base.
		remainder := intValue - (quotient * base).
		intValue := quotient.
		aStream nextPut: (self alphabet at: remainder + 1) ]