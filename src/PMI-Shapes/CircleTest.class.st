Class {
	#name : #CircleTest,
	#superclass : #TestCase,
	#category : #'PMI-Shapes-Tests'
}

{ #category : #tests }
CircleTest >> testArea [

	self assert: Circle new area equals: Float pi.
	self assert: (Circle newR: 1.0 / Float pi sqrt) area closeTo: 1
]

{ #category : #tests }
CircleTest >> testCreation [

	self assert: (Circle newR: 5) r equals: 5.
	self assert: (Circle newR: -1) r equals: 0.1
]

{ #category : #tests }
CircleTest >> testInitialize [
self assert: Circle new r equals: 1
]

{ #category : #tests }
CircleTest >> testPerim [

	self assert: Circle new perim equals: Float pi * 2.
	self assert: (Circle newR: 0.5) perim equals: Float pi
]
