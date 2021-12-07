#include-once

#include "Ogame.au3"

Func FleetDispatch ()
	Local $this = newVoidMap ()
	Return $this
EndFunc

Func Ship ()
	Local $this = newVoidMap ()
	Return $this
EndFunc

Func fleetDispatchGet ()

	While (Not fleetDispatchIsOnPage ())
		fleetDispatchOpenPage ()
	WEnd

EndFunc

Func fleetDispatchIsOnPage ()

	webDriverSetUrl ()
	urlSetPage ()

	If ($__oOgame.Url.Page = $__oOgame.Url.Component.FLEETDISPATCH) Then
		Return True
	EndIf

	Return False

EndFunc

Func fleetDispatchOpenPage ()
	MsgBox (0, "", "Close")
EndFunc