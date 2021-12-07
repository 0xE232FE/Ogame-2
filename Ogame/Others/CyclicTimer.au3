#include-once

Global $__oCyclicTimer = Null

#include "Map.au3"
#include "Timer.au3"
#include "Arrays.au3"
#include "Logger.au3"

Func CyclicTimer ()
	Local $this = newVoidMap ()
	$this.Stack = newVoidMap ()
	$this.timer = TimerInit ()
	$this.timeout = 1
	$this.log = False
	Return $this
EndFunc

Func cyclicTimerReset ()
	$__oCyclicTimer.Stack = newVoidMap ()
	$__oCyclicTimer.timer = TimerInit ()
	$__oCyclicTimer.timeout = 1
EndFunc

Func cyclicTimerDelete ($sKey)

	If (MapExists ($__oCyclicTimer.Stack, $sKey)) Then
		MapRemove ($__oCyclicTimer.Stack, $sKey)
		logger ($__oCyclicTimer.log, "CyclicTimer", "cyclicTimerDelete()")
		;loggerData ($__oCyclicTimer.Stack, "$__oCyclicTimer.Stack")
	Else
		logger ($__oCyclicTimer.log, "CyclicTimer", "cyclicTimerRemove() -> key:" & $sKey & " not exists")
	EndIf

EndFunc

Func cyclicTimerAdd ($fFunc, $nTime=Default, $aParams=Default, $fReturnFunc=Default)

	If ($nTime = Default) Then $nTime = 1
	If ($aParams = Default) Then $aParams = newVoidArray ()
	If ($fReturnFunc = Default) Then $fReturnFunc = Null

	Local $oElement = newVoidMap ()
	$oElement.func = $fFunc
	$oElement.time = timerGetTimeout ($nTime)
	$oElement.params = $aParams
	$oElement.returnFunc = $fReturnFunc

	MapAppend ($__oCyclicTimer.Stack, $oElement)

	logger ($__oCyclicTimer.log, "CyclicTimer", "cyclicTimerAdd()")
	;loggerData ($__oCyclicTimer.Stack, "$__oCyclicTimer.Stack")

EndFunc

Func cyclicTimerRemoveFunction ($fFunc)

	Local $aKeys = MapKeys ($__oCyclicTimer.Stack)

	For $k In $aKeys

		Local $fCyclicFunc = $__oCyclicTimer.Stack[$k].func

		If ($fCyclicFunc = $fFunc) Then
			logger ($__oCyclicTimer.log, "CyclicTimer", "cyclicTimerRemoveFunction() -> index:" & $k & " func:" & FuncName ($fFunc))
			cyclicTimerDelete ($k)
		EndIf

	Next

EndFunc

Func cyclicTimerExecute ()

	If (TimerDiff ($__oCyclicTimer.timer) >= $__oCyclicTimer.timeout) Then

		Local $aKeys = MapKeys ($__oCyclicTimer.Stack)
		Local $nSize = UBound ($aKeys)

		If ($nSize > 0) Then

			Local $nNowTime = timerGetTime ()

			For $k In $aKeys

				Local $oElement = $__oCyclicTimer.Stack[$k]
				Local $fFunc = $oElement.func
				Local $nTime = $oElement.time
				Local $aParams = $oElement.params
				Local $fReturnFunc = $oElement.returnFunc

				If ($nNowTime > $nTime) Then

					Local $vReturn = cyclicTimerCall ($fFunc, $aParams)

					If ($fReturnFunc <> Null) Then
						cyclicTimerCall ($fReturnFunc, $vReturn)
					EndIf

					logger ($__oCyclicTimer.log, "CyclicTimer", "cyclicTimerExecute()")
					;loggerData ($vReturn, "$__oCyclicTimer.Stack[" & $k & "] -> $vReturn")

					cyclicTimerDelete ($k)
					ExitLoop

				EndIf

			Next

		EndIf

		$__oCyclicTimer.timer = TimerInit ()
		logger ($__oCyclicTimer.log, "CyclicTimer", "cyclicTimerExecute() -> size:" & UBound (MapKeys ($__oCyclicTimer.Stack)))

	EndIf

EndFunc

Func cyclicTimerCall ($fFunc, $aParams)

	Local $sParams = cyclicTimerParamsToString ($aParams)
	Local $sFuncName = FuncName ($fFunc)
	Local $vRet = Null
	Local $bErr = 0

	Switch ($sParams)
		Case ""
			$vRet = Execute ("Call($fFunc)")
			$bErr = @error
			logger ($__oCyclicTimer.log, "CyclicTimer", "cyclicTimerCall() -> func:" & $sFuncName & " without params" & @CRLF)
		Case Else
			$vRet = Execute ("Call($fFunc," & $sParams & ")")
			$bErr = @error
			logger ($__oCyclicTimer.log, "CyclicTimer", "cyclicTimerCall() -> func:" & $sFuncName & " params:" & $sParams & @CRLF)
	EndSwitch

	If ($bErr) Then
		loggerErrorBox ("CyclicTimer", "error:" & $bErr & " with func:" & $sFuncName & " and params:" & arrayToString ($aParams))
	EndIf

	Return $vRet

EndFunc

Func cyclicTimerParamsToString ($aParams)

	Local $nSize = UBound ($aParams)
	Local $sParams = ""

	For $i=0 To $nSize - 1
		$sParams &= "$aParams[" & $i & "]" & ","
	Next

	Return StringTrimRight ($sParams, 1)

EndFunc