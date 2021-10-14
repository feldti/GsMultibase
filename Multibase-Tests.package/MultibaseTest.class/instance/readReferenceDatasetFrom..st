other
readReferenceDatasetFrom: dataset
	|  encodings |

	encodings := (dataset lines collect:
		[ :each |
			| record string |
			record := each splitOn: $,.
			string := record second trimBoth:
							[ :char | char isSeparator or: [ char = $" ] ].			
			record first asSymbol -> string ])
		asDictionary.
	^ encodings
