# GsMultibase

## Installation

I assume a database created via "createStone <stonename> <version>", so tODE and lots of other libraries are already loaded. 
  
You can load GsMultibase using Metacello. The lock statement is needed due to different PharoCompatibility definitions.

```Smalltalk
Metacello new
  repository: 'github://feldti/GsMultibase:main/repository';
  baseline: 'GsMultibase';
  onLock: [:ex | ex honor ];
  load
```
