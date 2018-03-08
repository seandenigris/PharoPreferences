*DeNigrisPreferences-Core
createBaselineOf
	| baselineBasename |
	(MetacelloToolBox baselineNamed: self name)
		createBaselineOfMethod: 'baseline:' inCategory: 'baseline';
		addBaselineOfSection: #common
			requiredProjects: #() "This means Configs, not Baselines, so will usually be empty"
			packages: { baselineBasename }
			repositories: #()
			dependencies: #() "Could calculate from Dependency Analyzer?"
			groups: #()
			versionSpecsDo: [ :versionSpec |  ];
		commitBaselineOfMethod