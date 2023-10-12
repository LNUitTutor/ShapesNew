Class {
	#name : #RectTest,
	#superclass : #TestCase,
	#category : #'PMI-Shapes-Tests'
}

{ #category : #tests }
RectTest >> testArea [

	self assert: (Rect newA: 3 andB: 4) area equals: 3 * 4.
	self assert: (Rect newA: 5 andB: 5) area equals: 25.
	self assert: (Rect newA: 10 andB: 1) area equals: 10.
	self assert: (Rect newA: 0 andB: 10) area equals: 1
]

{ #category : #tests }
RectTest >> testCreation [

  | p r |
  p := Rect newA: 10 andB: 12.
  self assert: p a equals: 10.
  self assert: p b equals: 12.
  r := Rect newA: -5 andB: 0.
  self assert: r a equals: 0.1.
  self assert: r b equals: 0.1
]

{ #category : #tests }
RectTest >> testGreater [

	| p r q |
	p := Rect newA: 10 andB: 12.
	r := Rect newA: 12 andB: 10.
	q := Rect newA: 10 andB: 10.
	self assert: p > q.
	self deny: p > r.
	self deny: r > p.
	self assert: r > q.
]

{ #category : #tests }
RectTest >> testInitialize [

   | rect |
   rect := Rect new.
   self assert: rect a equals: 3.
   self assert: rect b equals: 4.
]

{ #category : #tests }
RectTest >> testLess [

	| p r q |
	p := Rect newA: 10 andB: 12.
	r := Rect newA: 12 andB: 10.
	q := Rect newA: 10 andB: 10.
	self assert: q < p.
	self deny: p < r.
	self deny: r < p.
	self assert: q < r.
]

{ #category : #tests }
RectTest >> testPerim [

	self assert: (Rect newA: 3 andB: 4) perim equals: (3 + 4) * 2.
	self assert: (Rect newA: 5 andB: 5) perim equals: 20.
	self assert: (Rect newA: 10 andB: 1) perim equals: 22.
	self assert: (Rect newA: 0 andB: 10) perim equals: 20.2
]
