"
Квадрат - прямокутник з однаковими сторонами
"
Class {
	#name : #Square,
	#superclass : #Rect,
	#category : #'PMI-Shapes-Flat'
}

{ #category : #'instance creation' }
Square class >> newA: aNumb [

^self basicNew a: aNumb ; b: aNumb 
]

{ #category : #'instance creation' }
Square class >> newA: width andB: height [
^ self error: 'Use newA: instead.'
]

{ #category : #accessing }
Square >> b [
^ a.
]

{ #category : #accessing }
Square >> b: aNumber [

 a := aNumber 
]

{ #category : #initialization }
Square >> initialize [

	a := 5.
	b := 5
]

{ #category : #printing }
Square >> printOn: aStream [

   aStream nextPutAll: 'a Square['.
	a printOn: aStream.
	aStream nextPut: $x.
	a printOn: aStream.
	aStream nextPut: $].
]
