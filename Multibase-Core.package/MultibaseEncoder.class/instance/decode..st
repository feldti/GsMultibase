decoding
decode: aString 
	| codec |
	codec := MultibaseCodec forCode: aString first.
	^ codec decode: aString allButFirst
