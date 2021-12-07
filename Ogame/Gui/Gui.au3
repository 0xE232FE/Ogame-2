#include-once

Global $__oGui = Null

#include <GUIConstants.au3>

#include "..\Others\Map.au3"
#include "..\Ogame\Ogame.au3"

Func Gui ()
	Local $this = newVoidMap ()
	$this.id = Null
	$this.button_On_Off = Null
	$this.buttonState_On_Off = False
	$this.input_TimeMin = Null
	$this.input_TimeMax = Null
	Return $this
EndFunc

Func guiStartup ()

	Opt ("GUIOnEventMode", 1)

	$__oGui.id = GUICreate ("Ogame", 200, 250, -1, -1)
	GUISetOnEvent ($GUI_EVENT_CLOSE, "mainShutdown", $__oGui.id)

	$__oGui.button_On_Off = GUICtrlCreateButton ("START", 25, 25, 150, 75)
	GUICtrlSetOnEvent ($__oGui.button_On_Off, "guiEventButtonOnOff")

	GUICtrlCreateGroup ("Times check ( second )", 25, 125, 150, 100)

	GUICtrlCreateLabel ("Min:", 50, 155, 30, 20)
	GUICtrlCreateLabel ("Max:", 50, 185, 30, 20)

	$__oGui.input_TimeMin = GUICtrlCreateInput ($__oOgame.FleetMovement.callTimeMin / 1000, 90, 155, 50, 20, $ES_NUMBER)
	$__oGui.input_TimeMax = GUICtrlCreateInput ($__oOgame.FleetMovement.callTimeMax / 1000, 90, 185, 50, 20, $ES_NUMBER)

	GUISetState (@SW_SHOW)

EndFunc

Func guiShutdown ()
	GUIDelete ()
EndFunc

Func guiEventButtonOnOff ()

	$__oGui.button_On_Off_State = Not ($__oGui.button_On_Off_State)
	GUICtrlSetData ($__oGui.button_On_Off, ($__oGui.button_On_Off_State ? "STOP" : "START"))

	Local $oTimes = guiGetTimes ()

	ogameSetRunning ($__oGui.button_On_Off_State)
	fleetMovementSetCallTimes ($oTimes)

EndFunc

Func guiGetTimes ()

	Local $oTimes = newVoidMap ()

	$oTimes.min = Number (GUICtrlRead ($__oGui.input_TimeMin))
	$oTimes.max = Number (GUICtrlRead ($__oGui.input_TimeMax))

	If ($oTimes.min <= 0) Then
		$oTimes.min = 1
		GUICtrlSetData ($__oGui.input_TimeMin, $oTimes.min)
	EndIf

	If ($oTimes.min >= $oTimes.max) Then
		$oTimes.max = $oTimes.min + 1
		GUICtrlSetData ($__oGui.input_TimeMax, $oTimes.max)
	EndIf

	Return $oTimes

EndFunc