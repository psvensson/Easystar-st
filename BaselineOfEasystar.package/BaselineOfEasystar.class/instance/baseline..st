baselines
baseline: spec
	<baseline>
	spec for: #common do: [ "Packages"
		spec
			package: 'Easystar';
			package: 'Easystar-Tests'
			with: [ spec requires: #( 'Easystar' ) ] ]