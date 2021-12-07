#include-once

#include "Ogame.au3"

#include "..\WebDriver\WebDriver.au3"

Func Url ()
	Local $this = newVoidMap ()
 	$this.BASE_EXPRESSION = "s" & "([0-9]{1,3})" & "-" & "([a-z]{2,2})" & ".ogame.gameforge.com"
	$this.BASE_UNIVERSE = ""
	$this.BASE_COMPONENT = "component"

	$this.page = ""
	$this.Component = UrlComponent ()
	$this.log = True
	Return $this
EndFunc

Func UrlComponent ()
	Local $this = newVoidMap ()
	$this.OVERVIEW = "overview"
	$this.SUPPLIES = "supplies"
	$this.FACILITIES = "facilities"
	$this.RESEARCH = "research"
	$this.FLEETDISPATCH = "fleetdispatch"
	$this.GALAXY = "galaxy"
	Return $this
EndFunc

Func urlSetBase ($nId, $sLang)
	$__oOgame.Url.BASE = "s" & $nId & "-" & $sLang & ".ogame.gameforge.com"
	logger ($__oOgame.Url.log, "$__oOgame.Url", "urlSetBase() -> base:" & $__oOgame.Url.BASE)
EndFunc

Func urlSetPage ()

	If ($__oOgame.Url.page <> "") Then
		$__oOgame.Url.page = ""
	EndIf

	For $sComponent In $__oOgame.Url.Component

		If (StringInStr ($__oWebDriver.url, $__oOgame.Url.BASE_COMPONENT & "=" & $sComponent)) Then
			$__oOgame.Url.page = $sComponent
			logger ($__oOgame.Url.log, "$__oOgame.Url", "urlSetPage() -> page:" & $__oOgame.Url.page)
		EndIf

	Next

EndFunc