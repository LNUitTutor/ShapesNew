Class {
	#name : #TriangleTest,
	#superclass : #TestCase,
	#category : #'PMI-Shapes-Tests'
}

{ #category : #tests }
TriangleTest >> testArea [

	| t |
	t := Triangle new.
	self assert: t area equals: 3 sqrt.
	t := Triangle newA: 3 andB: 4 withG: 90.
	self assert: t area equals: 6
]

{ #category : #tests }
TriangleTest >> testC [

	| t |
	t := Triangle new.
	self assert: t c closeTo: t a.
	t := Triangle newA: 3 andB: 4 withG: 90.
	self assert: t c equals: 5
]

{ #category : #tests }
TriangleTest >> testPerim [

	| t |
	t := Triangle new.
	self assert: t perim closeTo: 6.
	t := Triangle newA: 3 andB: 4 withG: 90.
	self assert: t perim equals: 12
]
