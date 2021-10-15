decoding
decodeToInteger: aString 
	| integerValue |
	integerValue := aString inject: 0 into:
		[ :int :digit |
			| digitAsInt |
			digitAsInt := self alphabet indexOf: digit.
			digitAsInt = 0 ifTrue:
				[ MultibaseEncodingError signal:
					'invalid digit ', digit asString, ' in base ', base asString ].
			base * int + (digitAsInt-1) ].
	^ integerValue
