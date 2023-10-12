Class {
	#name : #BaselineOfShapesNew,
	#superclass : #BaselineOf,
	#category : #BaselineOfShapesNew
}

{ #category : #baselines }
BaselineOfShapesNew >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec
			package: 'PMI-Shapes';
			package: 'PMI-Shapes-Tests' with: [ spec requires: #( 'PMI-Shapes' ) ]
		].
]

{ #category : #accessing }
BaselineOfShapesNew >> projectClass [
	^ MetacelloCypressBaselineProject
]
