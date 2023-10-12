Class {
	#name : #DirectShape,
	#superclass : #VolumeShape,
	#category : #'PMI-Shapes-Volume'
}

{ #category : #calculating }
DirectShape >> lateralArea [ 

	^ height * base perim
]

{ #category : #calculating }
DirectShape >> surfaceArea [

	^ 2 * self baseArea + self lateralArea
]

{ #category : #calculating }
DirectShape >> volume [

	^ height  * self baseArea
]
