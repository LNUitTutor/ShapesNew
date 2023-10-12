"
Трикутник задано двома сторонами і кутом між ними (у градусах)
"
Class {
	#name : #Triangle,
	#superclass : #FlatShape,
	#instVars : [
		'a',
		'b',
		'gamma'
	],
	#category : #'PMI-Shapes-Flat'
}

{ #category : #'instance creation' }
Triangle class >> newA: aNum andB: bNum withG: anAngle [

	^ self basicNew
		  a: aNum;
		  b: bNum;
		  gamma: anAngle
]

{ #category : #accessing }
Triangle >> a [

	^ a
]

{ #category : #accessing }
Triangle >> a: aNumber [

	a := 0.1 max: aNumber 
]

{ #category : #calculating }
Triangle >> area [

	^ 0.5 * self a * self b * self gammaInRad sin
]

{ #category : #accessing }
Triangle >> b [

	^ b
]

{ #category : #accessing }
Triangle >> b: aNumber [

	b := 0.1 max: aNumber 
]

{ #category : #accessing }
Triangle >> c [
"return the third side of the triangle"
^ (a squared + b squared - (2 * a * b * self gammaInRad cos)) sqrt
]

{ #category : #accessing }
Triangle >> gamma [

	^ gamma
]

{ #category : #accessing }
Triangle >> gamma: anAngle [

	(anAngle between: 1 and: 179)
		ifTrue: [ gamma := anAngle ]
		ifFalse: [ self error: 'The angle have to be in (0;180)' ]
]

{ #category : #accessing }
Triangle >> gammaInRad [

	^ gamma / 180 * Float pi
]

{ #category : #calculating }
Triangle >> inRadius [

	^ 2 * self area / self perim
]

{ #category : #initialization }
Triangle >> initialize [

	a := 2.
	b := 2.
	gamma := 60
]

{ #category : #calculating }
Triangle >> perim [
^ self a + self b + self c
]

{ #category : #printing }
Triangle >> printOn: aStream [

	aStream nextPutAll: 'Triangle<'.
	self a printOn: aStream.
	aStream nextPut: $,.
	self b printOn: aStream.
	aStream nextPut: $,.
	self gamma printOn: aStream.
	aStream nextPut: $>
]
