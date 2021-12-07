#include-once

Func timeToString ($nTime, $sType, $bMil=False, $bSec=False, $bMin=False, $bHrs=False, $bDay=False, $bMth=False, $bYrs=False)

	Local $nMs = timeConvertToMs ($sType, $nTime)
	Local $sTime = timeConvertToString ($nMs, $bMil, $bSec, $bMin, $bHrs, $bDay, $bMth, $bYrs)
	Return $sTime

EndFunc

Func timeConvertToMs ($sType, $nTime)

	Switch ($sType)
		Case "mil"
			Return $nTime
		Case "sec"
			Return $nTime * 1000
		Case "min"
			Return $nTime * 1000 * 60
		Case "hrs"
			Return $nTime * 1000 * 60 * 60
		Case "day"
			Return $nTime * 1000 * 60 * 60 * 24
		Case "mth"
			Return $nTime * 1000 * 60 * 60 * 24 * 30
		Case "yrs"
			Return $nTime * 1000 * 60 * 60 * 24 * 30 * 12
	EndSwitch

	Return -1

EndFunc

Func timeConvertToString ($nMs, $bMil, $bSec, $bMin, $bHrs, $bDay, $bMth, $bYrs)

	Local $nMil = Null
	Local $nSec = Null
	Local $nMin = Null
	Local $nHrs = Null
	Local $nDay = Null
	Local $nMth = Null
	Local $nYrs = Null

	If ($bMil) Then
		$nMil = ($bSec Or $bMin Or $bHrs Or $bDay Or $bMth Or $bYrs) ? Floor (Mod ($nMs, 1000)) : Floor ($nMs)
	EndIf

	If ($bSec) Then
		$nSec = ($bMin Or $bHrs Or $bDay Or $bMth Or $bYrs) ? Mod (Floor ($nMs / (1000)), 60) : Floor ($nMs / (1000))
	EndIf

	If ($bMin) Then
		$nMin = ($bHrs Or $bDay Or $bMth Or $bYrs) ? Mod (Floor ($nMs / (1000 * 60)), 60) : Floor ($nMs / (1000 * 60))
	EndIf

	If ($bHrs) Then
		$nHrs = ($bDay Or $bMth Or $bYrs) ? Mod (Floor ($nMs / (1000 * 60 * 60)), 24) : Floor ($nMs / (1000 * 60 * 60))
	EndIf

	If ($bDay) Then
		$nDay = ($bMth Or $bYrs) ? Mod (Floor ($nMs / (1000 * 60 * 60 * 24)), 30) : Floor ($nMs / (1000 * 60 * 60 * 24))
	EndIf

	If ($bMth) Then
		$nMth = ($bYrs) ? Mod (Floor ($nMs / (1000 * 60 * 60 * 24 * 30)), 12) : Floor ($nMs / (1000 * 60 * 60 * 24 * 30))
	EndIf

	If ($bYrs) Then
		$nYrs = Floor ($nMs / (1000 * 60 * 60 * 24 * 30 * 12))
	EndIf

	Return ($bYrs ? $nYrs & "yrs " : "") & ($bMth ? $nMth & "mth " : "") & ($bDay ? $nDay & "day " : "") & ($bHrs ? $nHrs & "hrs " : "") & ($bMin ? $nMin & "min " : "") & ($bSec ? $nSec & "sec " : "") & ($bMil ? $nMil & "mil " : "")

EndFunc