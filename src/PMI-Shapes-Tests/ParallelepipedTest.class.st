Class {
	#name : #ParallelepipedTest,
	#superclass : #TestCase,
	#category : #'PMI-Shapes-Tests'
}

{ #category : #tests }
ParallelepipedTest >> testBaseArea [
self assert: Parallelepiped new baseArea equals: 12
]

{ #category : #tests }
ParallelepipedTest >> testVolume [
| p |
p := Parallelepiped new.
self assert: p volume equals: 3*4*1.
p := Parallelepiped newA: 5 andB: 5 andC: 5.
self assert: p volume equals: 125
]
