encoding
encode: aByteArray base: aSymbol 
	| codec |
	codec := MultibaseCodec forBase: aSymbol.
	^ codec code asString, (codec encode: aByteArray)
