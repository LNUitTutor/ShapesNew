"
Модель плоскої геометричної фігури Коло
"
Class {
	#name : #Circle,
	#superclass : #FlatShape,
	#instVars : [
		'r'
	],
	#category : #'PMI-Shapes-Flat'
}

{ #category : #'instance creation' }
Circle class >> newR: aNumber [

	^ self basicNew r: aNumber
]

{ #category : #calculating }
Circle >> area [ 
^ Float pi * r squared.
]

{ #category : #initialization }
Circle >> initialize [ 
 r := 1
]

{ #category : #calculating }
Circle >> perim [ 
^ 2.0 * Float pi * r
]

{ #category : #printing }
Circle >> printOn: aStream [

	aStream nextPutAll: 'a Circle('.
	r printOn: aStream.
	aStream nextPut: $)
]

{ #category : #accessing }
Circle >> r [

	^ r
]

{ #category : #accessing }
Circle >> r: aNumber [

	r := 0.1 max: aNumber 
]
