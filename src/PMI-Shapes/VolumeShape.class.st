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

{ #category : #printing }
VolumeShape >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' ( base = '.
	base printOn: aStream.
	aStream nextPutAll: ', h = '.
	height printOn: aStream.
	aStream nextPutAll: ' )'
]

{ #category : #calculating }
VolumeShape >> surfaceArea [

	^ self subclassResponsibility
]

{ #category : #calculating }
VolumeShape >> volume [

	^ self subclassResponsibility
]
