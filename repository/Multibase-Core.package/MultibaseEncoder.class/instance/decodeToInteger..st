decoding
decodeToInteger: aString 
	| codec |
	codec := MultibaseCodec forCode: aString first.
	^ codec decodeToInteger: aString allButFirst