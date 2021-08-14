"
I am a generator of sequential palette. I take 2 different colors and i can make a gradient between them. The number of colors also must be given.

**Instance variables:**
- startingColor: a starting color wich the gradient will begin
- endingColor: an ending color wich the gradient will finish
- numberOfColors: a number of colors to make

Example:
```Smalltalk
p := ClPSequentialPaletteGenerator new.
p	startColor: Color red endColor: Color white;
	generate: 10
```
"
Class {
	#name : #ClPSequentialPaletteGenerator,
	#superclass : #ClPPaletteGenerator,
	#instVars : [
		'startingColor',
		'endingColor'
	],
	#category : #'MooseIDE-ColorPalette-PaletteGenerator'
}

{ #category : #accessing }
ClPSequentialPaletteGenerator >> gradient [
	
	"make a gradient between a starting color and an ending color"
	
	| colors |
	colors := OrderedCollection new.
	colors add: startingColor .
	2 to: numberOfColors do: [ :i |
		| ratio red green blue |
		ratio := i / numberOfColors .
		red := (endingColor red * ratio) + (startingColor red * (1 - ratio)). 
		green := (endingColor green * ratio) + (startingColor green * (1 - ratio)).
		blue := (endingColor blue * ratio) + (startingColor blue * (1 - ratio)).
		colors add: (Color r: red g: green b: blue )].
	^ colors
]

{ #category : #accessing }
ClPSequentialPaletteGenerator >> makeColors [
	 
	^ self gradient

	

	
]

{ #category : #accessing }
ClPSequentialPaletteGenerator >> startColor: aStartingColor endColor: anEndingColor [ 

	startingColor := Color colorFrom: aStartingColor .
	endingColor := Color colorFrom: anEndingColor .

	
 
]