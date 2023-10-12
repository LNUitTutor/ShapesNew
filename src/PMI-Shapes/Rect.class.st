"
Model of geometric rectangle. Holds width and height.
"
Class {
	#name : #Rect,
	#superclass : #FlatShape,
	#instVars : [
		'a',
		'b'
	],
	#category : #'PMI-Shapes-Flat'
}

{ #category : #'instance creation' }
Rect class >> newA: width andB: height [
   "| rect |
  rect := self basicNew.
  rect a: width ; b: height .
^ rect "
^ self basicNew a: width; b: height.
]

{ #category : #comparing }
Rect >> < aRect [

^ self area < aRect area.
]

{ #category : #comparing }
Rect >> > aRect [

^ aRect < self
]

{ #category : #accessing }
Rect >> a [
	^ a
]

{ #category : #accessing }
Rect >> a: aNumber [

	a := 0.1 max: aNumber
]

{ #category : #calculating }
Rect >> area [
^ self a * self b
]

{ #category : #accessing }
Rect >> b [
	^ b
]

{ #category : #accessing }
Rect >> b: aNumber [

	b := aNumber max: 0.1
]

{ #category : #initialization }
Rect >> initialize [

   a := 3.
   b := 4.
]

{ #category : #calculating }
Rect >> perim [

^ (self a + self b) * 2
]

{ #category : #printing }
Rect >> printOn: aStream [

   aStream nextPutAll: 'a Rectangle['.
	a printOn: aStream.
	aStream nextPut: $x.
	b printOn: aStream.
	aStream nextPut: $].
]
