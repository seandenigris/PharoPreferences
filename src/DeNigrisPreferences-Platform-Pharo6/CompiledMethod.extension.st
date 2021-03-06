Extension { #name : #CompiledMethod }

{ #category : #'*DeNigrisPreferences-Platform-Pharo6' }
CompiledMethod >> dateMethodLastSubmitted [
	"Answer a Date object indicating when a method was last submitted.  If there is no date stamp, return nil"
	"(CompiledMethod compiledMethodAt: #dateMethodLastSubmitted) dateMethodLastSubmitted"

	| aStamp tokens |
	aStamp := self timeStamp.
	tokens := aStamp findBetweenSubstrings: ' 
'.  "space is expected delimiter, but cr is sometimes seen, though of mysterious provenance"
	^ tokens size > 1
		ifTrue:
			[[tokens second asDate] ifError: [nil]]
		ifFalse:
			[nil].
]
