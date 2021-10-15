testing
testDecodeToInteger 
	| randomInteger encoded |
	100 timesRepeat:
		[ randomInteger := 1000000000 atRandom.
		  encoded := '9', randomInteger printString.
		  self assert: (MultibaseEncoder new decodeToInteger: encoded)
				 equals: randomInteger.
		  encoded := 'f', (randomInteger radix: 16) asLowercase.
		  self assert: (MultibaseEncoder new decodeToInteger: encoded)
				 equals: randomInteger.
		  encoded := '0', (randomInteger radix: 2).
		  self assert: (MultibaseEncoder new decodeToInteger: encoded)
				 equals: randomInteger ]
