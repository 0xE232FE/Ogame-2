#include-once

#include <Date.au3>
#include <Array.au3>

Func timestampToDate ($nTimestamp)

	Local $aTimeZone = _Date_Time_GetTimeZoneInformation ()
	Local $nTimeUtcAdd = $aTimeZone[1]
	Local $nTimestampAdd = $nTimestamp - ($nTimeUtcAdd * 60)
	Local $sDate = _DateAdd ("s", $nTimestampAdd, "1970/01/01 00:00:00")

	Return $sDate

EndFunc

Func dateFormat ($sDate)

	Local $aDate, $aTime
	_DateTimeSplit($sDate, $aDate, $aTime)

	Return $aDate[3] & "." & $aDate[2] & "." & $aDate[1] & " " & $aTime[1] & ":" & $aTime[2] & ":" & $aTime[3]

EndFunc

Func dateNowToTimestamp ()
	Return dateToTimestamp (_NowCalc ())
EndFunc

Func dateToTimestamp ($sDate)

	Local $aTimeZone = _Date_Time_GetTimeZoneInformation ()
	Local $nTimeUtcAdd = $aTimeZone[1]
	Local $sDateAdd = _DateAdd ("n", $aTimeZone[1], $sDate)

	Return _DateDiff ("s", "1970/01/01 00:00:00", $sDateAdd)

EndFunc

Func dateDiff ($sDate)
	Return _DateDiff ("s", _NowCalc (), $sDate)
EndFunc
