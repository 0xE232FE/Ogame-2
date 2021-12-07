#include-once

#include "Ogame.au3"

Func FleetMovement ()
	Local $this = newVoidMap ()
	$this.elementOpenDetails = ""
	$this.elementCloseDetails = ""
	$this.callTimer = Null
	$this.callTime = 0
	$this.callTimeMin = 1000
	$this.callTimeMax = 3000
	$this.Movements = newVoidMap ()
	$this.log = True
	Return $this
EndFunc

Func fleetMovementRun ()

	If ($__oOgame.FleetMovement.callTimer = Null Or TimerDiff ($__oOgame.FleetMovement.callTimer) > $__oOgame.FleetMovement.callTime) Then

		_WD_Action ($__oWebDriver.session, "refresh")
		Local $sSources = _WD_GetSource ($__oWebDriver.session)

		Local $oHtml = HtmlFile ($sSources)
		Local $oEvent = $oHtml.GetElementById ("eventContent")

		If (HtmlElementValid ($oEvent)) Then

			fleetMovementGetDetails ($oEvent)
			fleetMovementPrint ()

			For $oMovement In $__oOgame.FleetMovement.Movements

				If (attacked ($oMovement)) Then
					attackAdvert ($oMovement)
				EndIf

			Next

		EndIf

		$__oOgame.FleetMovement.callTimer = TimerInit ()
		$__oOgame.FleetMovement.callTime = Random ($__oOgame.FleetMovement.callTimeMin, $__oOgame.FleetMovement.callTimeMax)

	EndIf

EndFunc

Func fleetMovementSetCallTimes ($oTimes)
	$__oOgame.FleetMovement.callTimeMin = $oTimes.min * 1000
	$__oOgame.FleetMovement.callTimeMax = $oTimes.max * 1000
	logger ($__oOgame.FleetMovement.log, "$__oOgame.FleetMovement", "fleetMovementSetCallTimes() -> callTimeMin:" & $oTimes.min & "sec" & " callTimeMax:" & $oTimes.max & "sec")
EndFunc

Func fleetMovementPrint ()

	If ($__oOgame.FleetMovement.log) Then

		Local $aKeys = MapKeys ($__oOgame.FleetMovement.Movements)
		Local $nSizeKeys = UBound ($aKeys)

		For $nKey In $aKeys
			loggerData ($__oOgame.FleetMovement.Movements[$nKey], "$__oOgame.FleetMovement.Movements." & $nKey)
		Next

		logger ($__oOgame.FleetMovement.log, "$__oOgame.FleetMovement", "fleetMovementPrint() -> nbMissions:" & $nSizeKeys)

	EndIf

EndFunc

Func fleetMovementGetDetails ($oHtml)

	For $oEvent In $oHtml.ChildNodes

		For $oTr In $oEvent.GetElementsByTagName("tr")

			Local $sId = $oTr.GetAttribute("id")
			Local $sType = $oTr.GetAttribute("data-mission-type")
			Local $sReturn = $oTr.GetAttribute("data-return-flight")
			Local $sArrival = $oTr.GetAttribute("data-arrival-time")

			Local $sMenace = ""
			Local $sOriginName = ""
			Local $sOriginCoord = ""
			Local $sMovement = ""
			Local $sDestName = ""
			Local $sDestCoord = ""

			For $oTd In $oTr.GetElementsByTagName("td")

				Switch ($oTd.ClassName)

					Case "countDown"
						For $oSpan In $oTd.GetElementsByTagName("span")
							$sMenace = $oSpan.ClassName
						Next
					Case "originFleet"
						$sOriginName = $oTd.OuterText
					Case "coordsOrigin"
						$sOriginCoord = $oTd.OuterText
					Case "icon_movement", "icon_movement_reserve"
						For $oSpan In $oTd.GetElementsByTagName("span")
							$sMovement = $oSpan.GetAttribute("title")
						Next
					Case "destFleet"
						$sDestName = $oTd.OuterText
					Case "destCoords"
						$sDestCoord = $oTd.OuterText
				EndSwitch

			Next

			fleetMovementSetDetails ($sId, $sType, $sReturn, $sArrival, $sMenace, $sOriginName, $sOriginCoord, $sMovement, $sDestName, $sDestCoord)

		Next

	Next

EndFunc

Func fleetMovementSetDetails ($sId, $sType, $sReturn, $sArrival, $sMenace, $sOriginName, $sOriginCoord, $sMovement, $sDestName, $sDestCoord)

	Local $oMovement = newVoidMap ()

	$oMovement.id = StringReplace ($sId, "eventRow-", "")
	$oMovement.type = Number ($sType)
	$oMovement.typeName = missionTypeToName ($oMovement.type)
	$oMovement.return = $sReturn = "true" ? True : False
	$oMovement.arrival = Number ($sArrival)
	$oMovement.arrivalDate = timestampToDate ($oMovement.arrival)
	$oMovement.arrivalTime = $oMovement.arrival - dateNowToTimestamp ()
	$oMovement.menace = $sMenace
	$oMovement.menaced = fleetMovementGetIsMenaced ($oMovement.menace)
	$oMovement.originName = $sOriginName
	$oMovement.originCoord = $sOriginCoord
	$oMovement.destName = $sDestName
	$oMovement.destCoord = $sDestCoord

	Local $oIconMovement = fleetMovementGetIconMovement ($sMovement)

	$oMovement.Ships = fleetMovementGetShips ($oIconMovement)
	$oMovement.Cargo = fleetMovementGetCargo ($oIconMovement)

	$__oOgame["FleetMovement"]["Movements"][$oMovement.id] = $oMovement

EndFunc

Func fleetMovementGetIsMenaced ($sMenace)

	If (StringInStr ($sMenace, "friendly")) Then
		Return False
	ElseIf (StringInStr ($sMenace, "neutral")) Then
		Return False
	ElseIf (StringInStr ($sMenace, "hostile")) Then
		Return True
	EndIf

EndFunc

Func fleetMovementGetIconMovement ($sMovement)

	Local $oIconMovement = newVoidMap ()
	Local $oHtml = HtmlFile ($sMovement)
	Local $sName, $sValue

	For $oTd In $oHtml.GetElementsByTagName("td")

		If ($oTd.GetAttribute("colspan") = "2") Then
			$sName = StringReplace ($oTd.OuterText, ":", "")
			$oIconMovement[$sName] = 0
		ElseIf ($oTd.ClassName = "value") Then
			$sValue = StringReplace ($oTd.OuterText, ".", "")
			$oIconMovement[$sName] = Number ($sValue)
		EndIf

	Next

	Return $oIconMovement

EndFunc

Func fleetMovementGetShips ($oIcon)

	Local $oShips = newVoidMap ()

	For $sKey In MapKeys ($oIcon)
		If Not ($sKey = "Métal" Or $sKey = "Cristal" Or $sKey = "Deutérium") Then
			$oShips[$sKey] = $oIcon[$sKey]
		EndIf
	Next

	Return $oShips

EndFunc

Func fleetMovementGetCargo ($oIcon)

	Local $oCargo = newVoidMap ()

	For $sKey In MapKeys ($oIcon)
		If ($sKey = "Métal" Or $sKey = "Cristal" Or $sKey = "Deutérium") Then
			$oCargo[$sKey] = $oIcon[$sKey]
		EndIf
	Next

	Return $oCargo

EndFunc