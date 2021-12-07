#include-once

Func Coordinate ($nGalaxy, $nSystem, $nPosition)
	Local $this = newVoidMap ()
	$this.galaxy = $nGalaxy
	$this.system = $nSystem
	$this.position = $nPosition
	Return $this
EndFunc

Func coordinateCoordToString ($oCoord)

	Return "[" & $oCoord.galaxy & ":" & $oCoord.system & ":" & $oCoord.position & "]"

EndFunc

Func coordinateStringToCoord ($sCoord)

	Local $sCoordMid = StringMid ($sCoord, 2, StringLen ($sCoord) - 2)
	Local $aCoordSplit = StringSplit ($sCoordMid, ":", 2)
	Return Coordinate (Number ($aCoordSplit[0]), Number ($aCoordSplit[1]), Number ($aCoordSplit[2]))

EndFunc