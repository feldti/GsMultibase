testing
testDecodeRandomBytes 
	|  randomBytes digitString decoded |
	1 to: 20 do: [ :numberOfBytes |
		randomBytes := ByteArray new: numberOfBytes.
		1 to: randomBytes size do: [ :i | randomBytes at: i put: 256 atRandom - 1 ].
		"Base 2"
		digitString := randomBytes inject: '' into:
			[ :total :each | total, (each bitString last: 8) ].
		decoded := MultibaseEncoder new decode: '0', digitString.
		self assert: decoded equals: randomBytes.
		"Base 16"
		digitString := randomBytes inject: '' into:
			[ :total :each | total, (each  printPaddedWith: $0 to: 2 base: 16) ].
		decoded := MultibaseEncoder new decode: 'f', digitString asLowercase.
		self assert: decoded equals: randomBytes ]
