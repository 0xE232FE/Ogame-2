#include-once

Global $__oOgame = Null

#include "Url.au3"
#include "Attack.au3"
#include "Coordinate.au3"
#include "MissionType.au3"
#include "FleetDispatch.au3"
#include "FleetMovement.au3"

#include "..\WebDriver\WebDriver.au3"

Func Ogame ()

	Local $this = newVoidMap ()

	$this.hasBeenConnected = False
	$this.inGame = False
	$this.page = ""
	$this.running = False

	$this.serverId = Null
	$this.serverLang = ""

	$this.player = ""
	$this.universe = ""

	$this.Url = Url ()
	$this.Attack = Attack ()
	$this.FleetMovement = FleetMovement ()

	$this.log = True

	Return $this

EndFunc

Func ogameRun ()

	If ($__oOgame.running) Then

		$__oOgame.inGame = ogameInGame ()

		If ($__oOgame.inGame) Then

			fleetMovementRun ()

			If (@error) Then
				Return
			EndIf

		ElseIf ($__oOgame.hasBeenConnected) Then
			ogameReconnect ()
		EndIf

	EndIf

	cyclicTimerAdd (ogameRun)

EndFunc

Func ogameInGame ()

	Local $aRegExp = StringRegExp ($__oWebDriver.url, $__oOgame.Url.BASE_EXPRESSION, 3)

	If (IsArray ($aRegExp)) Then

		Local $nServerId = Number ($aRegExp[0])
		Local $sServerLang = $aRegExp[1]

		If Not ($__oOgame.hasBeenConnected) Then
			$__oOgame.hasBeenConnected = True
		EndIf

		If ($nServerId <> $__oOgame.serverId) Then
			$__oOgame.serverId = Number ($aRegExp[0])
			$__oOgame.serverLang = $aRegExp[1]
			urlSetBase ($__oOgame.serverId, $__oOgame.serverLang)
			urlSetPage ()
			ogameSetPlayer ()
			ogameSetUniverse ()
		EndIf

		Return True

	EndIf

	Return False

EndFunc

Func ogameSetRunning ($bValue)
	$__oOgame.running = $bValue
	logger ($__oOgame.log, "$__oOgame", "ogameSetRunning() -> running:" & $__oOgame.running)
EndFunc

Func ogameSetPlayer ()

	Local $sXpath_1 = '/html/head/meta[15]'
	Local $sElement_1 = _WD_WaitElement ($__oWebDriver.session, $_WD_LOCATOR_ByXPath, $sXpath_1, $__oWebDriver.waitTime)
	$__oOgame.player = _WD_ElementAction ($__oWebDriver.session, $sElement_1, "attribute", "content")

EndFunc

Func ogameSetUniverse ()

	Local $sXpath_1 = '/html/head/meta[6]'
	Local $sElement_1 = _WD_FindElement ($__oWebDriver.session, $_WD_LOCATOR_ByXPath, $sXpath_1)
	$__oOgame.universe = _WD_ElementAction ($__oWebDriver.session, $sElement_1, "attribute", "content")

EndFunc

Func ogameReconnect ()

	_WD_Navigate ($__oWebDriver.session, "https://lobby.ogame.gameforge.com")

	Local $sXpath_1 = '//*[@id="joinGame"]/button'
	Local $sElement_1 = _WD_WaitElement ($__oWebDriver.session, $_WD_LOCATOR_ByXPath, $sXpath_1, $__oWebDriver.waitTime)
	If ($sElement_1 = "" Or @error) Then
		webDriverWaitError (ogameReconnect, "xpath:" & $sXpath_1 & " not found")
	EndIf

	_WD_ElementAction ($__oWebDriver.session, $sElement_1, "click")

EndFunc