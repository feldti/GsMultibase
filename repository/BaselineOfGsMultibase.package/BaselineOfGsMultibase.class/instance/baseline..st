other
baseline: spec 
	<baseline>
	spec
		for: #'gemstone'
		do: [
			"First the prerequisites"
			spec
				baseline: 'PharoCompatibility'	
				with: [ 
					spec
						repository: 'github://GsDevKit/PharoCompatibility:master/repository' ;
						loads: #('GsPharo-Core')];
				yourself.

			"Now the actual delivered packages"
			spec
				package: 'Multibase-Core';
				package: 'Multibase-Tests' with: [ spec requires: #('Multibase-Core') ] ;
				yourself.

			"Now the names for more specific loading"
			spec
				group: 'runtime' with: #('Multibase-Core');
				group: 'default' with: #('Multibase-Core' 'Multibase-Tests');
				yourself
		]
