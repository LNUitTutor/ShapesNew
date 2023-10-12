"
Абстрактний клас плоских фігур.
Усі фігури вміють повідомляти:
- area  ""площу""
- perim ""периметр""
"
Class {
	#name : #FlatShape,
	#superclass : #Object,
	#category : #'PMI-Shapes-Flat'
}

{ #category : #calculating }
FlatShape >> area [
^ self subclassResponsibility 
]

{ #category : #calculating }
FlatShape >> perim [
^ self subclassResponsibility 
]
