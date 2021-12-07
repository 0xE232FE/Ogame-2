#include-once

#include "WebDriver.au3"

Func webDriverCheckTabs ()

	Local $aTabs = _WD_Window ($__oWebDriver.session, 'handles')
	Local $nSize = UBound ($aTabs)
	Local $nCurrentTabsSize = UBound ($__oWebDriver.tabs)

	If ($nSize > 0) Then

		If ($nSize <> $nCurrentTabsSize) Then

			If ($nSize > $nCurrentTabsSize) Then
				logger (True, "WebDriverHelp", "webDriverSwitchToNewTab() -> new tab")
			Else
				logger (True, "WebDriverHelp", "webDriverSwitchToNewTab() -> remove tab")
			EndIf

			$__oWebDriver.tabs = $aTabs
			webDriverSwitchToNewTab ()

		EndIf

	Else
		webDriverShutdown ()
	EndIf

EndFunc

Func webDriverSwitchToNewTab ()
	Local $sTabToSwitch = $__oWebDriver.tabs[UBound ($__oWebDriver.tabs) - 1]
	_WD_Window ($__oWebDriver.session, "switch", '{"handle":"' & $sTabToSwitch & '"}')
EndFunc

Func webDriverSwitchToNewTab ()
	Local $sTabToSwitch = $__oWebDriver.tabs[UBound ($__oWebDriver.tabs) - 1]
	_WD_Window ($__oWebDriver.session, "switch", '{"handle":"' & $sTabToSwitch & '"}')
EndFunc

Func webDriverSetUrl ()
	$__oWebDriver.url = _WD_Action ($__oWebDriver.session, "url")
EndFunc