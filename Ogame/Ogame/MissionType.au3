#include-once

#include "Ogame.au3"

Func missionTypeToName ($nNum)

	Switch ($nNum)
		Case 1
			Return "Attaquer"
		Case 2
			Return "Attaque Groupée"
		Case 3
			Return "Transporter"
		Case 4
			Return "Stationner chez soi"
		Case 5
			Return "Stationner chez ami"
		Case 6
			Return "Espionner"
		Case 7
			Return "Coloniser"
		Case 8
			Return "Recycler"
		Case 9
			Return "Détruire"
		Case 15
			Return "Expédition"
		Case Else
			Return "Inconnu"
	EndSwitch

EndFunc

Func missionNameToType ($sName)

	Switch ($sName)
		Case "Attaquer"
			Return 1
		Case "Attaque Groupée"
			Return 2
		Case "Transporter"
			Return 3
		Case "Stationner chez soi"
			Return 4
		Case "Stationner chez ami"
			Return 5
		Case "Espionner"
			Return 6
		Case "Coloniser"
			Return 7
		Case "Recycler"
			Return 8
		Case "Détruire"
			Return 9
		Case "Expédition"
			Return 15
		Case Else
			Return -1
	EndSwitch

EndFunc