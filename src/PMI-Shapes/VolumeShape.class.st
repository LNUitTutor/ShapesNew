Class {
	#name : #VolumeShape,
	#superclass : #Object,
	#instVars : [
		'base',
		'height'
	],
	#category : #'PMI-Shapes-Volume'
}

{ #category : #accessing }
VolumeShape >> base: aFlatShape [

	base := aFlatShape
]

{ #category : #calculating }
VolumeShape >> baseArea [

	^ base area
]

{ #category : #accessing }
VolumeShape >> height: aNumber [

	height := aNumber
]

{ #category : #initialization }
VolumeShape >> initialize [

	^ self subclassResponsibility
]

{ #category : #calculating }
VolumeShape >> lateralArea [

	^ self subclassResponsibility
]

{ #category : #calculating }
VolumeShape >> surfaceArea [

	^ self subclassResponsibility
]

{ #category : #calculating }
VolumeShape >> volume [

	^ self subclassResponsibility
]
