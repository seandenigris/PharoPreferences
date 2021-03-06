Extension { #name : #RPackage }

{ #category : #'*DeNigrisPreferences-Platform' }
RPackage >> forceRefreshClassDefinedSelectors [
        | dict |

        dict := Dictionary new.
        self definedClasses do: [ :e || set |
                set := Set new.
                e protocols
                        select: [  :p  | (p beginsWith: '*') not ]
                        thenDo: [ :p | (e methodsInProtocol: p) do: [ :m | set add: m selector ] ].
                dict at: e name put:set ].
        classDefinedSelectors := dict
]

{ #category : #'*DeNigrisPreferences-Platform' }
RPackage >> forceRefreshMetaclassDefinedSelectors [
        | dict |

        dict := Dictionary new.
        self definedClasses do: [ :e || set |
                set := Set new.
                e class protocols
                        select: [  :p  | (p beginsWith: '*') not ]
                        thenDo: [ :p | (e class methodsInProtocol: p) do: [ :m | set add: m selector ] ].
                dict at: e name put:set ].
        metaclassDefinedSelectors := dict
]
