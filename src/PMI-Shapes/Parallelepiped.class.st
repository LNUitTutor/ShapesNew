Class {
	#name : #Parallelepiped,
	#superclass : #DirectShape,
	#category : #'PMI-Shapes-Volume'
}

{ #category : #'instance creation' }
Parallelepiped class >> newA: aNumber andB: bNumber andC: cNumber [ 
	^ self basicNew height: cNumber; base: (Rect newA: aNumber andB: bNumber)
]

{ #category : #initialization }
Parallelepiped >> initialize [
	height := 1.
	base := Rect new.
]
