#include-once

#include <MsgBoxConstants.au3>

Func logger ($bLog, $sFrom, $sData)

	If ($bLog) Then

		If ($sFrom <> "") Then
			ConsoleWrite (">(" & $sFrom & ") : " & $sData & @CRLF)
		Else
			ConsoleWrite ($sData & @CRLF)
		EndIf

	EndIf

EndFunc

Func loggerError ($sFrom, $sData)

	If ($sFrom <> "") Then
		ConsoleWrite (">(" & $sFrom & ") : " & $sData & @CRLF)
	Else
		ConsoleWrite ($sData & @CRLF)
	EndIf

EndFunc

Func loggerErrorBox ($sFrom, $sData, $nTimeout=0)
	loggerError ($sFrom, $sData)
	MsgBox ($MB_TOPMOST, $sFrom, $sData, $nTimeout)
EndFunc

Func loggerFatal ($sFrom, $sData)
	loggerErrorBox ($sFrom, $sData)
	Exit
EndFunc

; =======================
; ===== logger data =====
; =======================

Func loggerData ($vVariable, $sName="", $sColor="!", $sSpace="")

	Local $sType = VarGetType ($vVariable)

	Switch ($sType)
		Case "Map"
			ConsoleWrite ($sColor & $sSpace & $sName & " -> " & $sType & "()" & @CRLF)
			ConsoleWrite ($sColor & $sSpace & "(" & @CRLF)
			loggerMapData ($vVariable, $sName, $sColor, $sSpace)
			ConsoleWrite ($sColor & $sSpace & ")" & @CRLF)
		Case "Array"
			ConsoleWrite ($sColor & $sSpace & $sName & " -> " & $sType & "[]" & @CRLF)
			ConsoleWrite ($sColor & $sSpace & "[" & @CRLF)
			loggerArrayData ($vVariable, $sName, $sColor, $sSpace)
			ConsoleWrite ($sColor & $sSpace & "]" & @CRLF)
		Case "Object"
			loggerObjectData ($vVariable, $sName, $sColor, $sSpace)
		Case Else
			loggerVariableData ($vVariable, $sType, $sName, $sColor, $sSpace)
	EndSwitch

EndFunc

Func loggerMapData ($mMap, $sName, $sColor, $sSpace)

	Local $aKeys = MapKeys ($mMap)
	Local $nKeysSize = UBound ($aKeys)

	If ($nKeysSize > 0) Then

		For $i=0 To $nKeysSize - 1

			Local $key = $aKeys[$i]
			Local $value = $mMap[$key]
			loggerData ($value, $sName & "." & $key, $sColor, $sSpace & "   ")

		Next

	Else
		loggerNoneData ($sColor, $sSpace & "   ")
	EndIf

EndFunc

Func loggerArrayData ($aArray, $sName, $sColor, $sSpace)

	Local $nSize = UBound ($aArray)

	If ($nSize > 0) Then

		For $i=0 To $nSize - 1

			Local $value = $aArray[$i]
			loggerData ($value, $sName & "[" & $i & "]", $sColor, $sSpace & "   ")

		Next

	Else
		loggerNoneData ($sColor, $sSpace & "   ")
	EndIf

EndFunc

Func loggerObjectData ($oObject, $sName, $sColor, $sSpace)

	Local $sObjName = ObjName ($oObject, 2)

	Switch ($sObjName)

		Case "Scripting.Dictionary"
			ConsoleWrite ($sColor & $sSpace & $sName & " -> " & $sObjName & "()" & @CRLF)
			ConsoleWrite ($sColor & $sSpace & "(" & @CRLF)
			loggerObjectDictionnaryData ($oObject, $sName, $sColor, $sSpace)
			ConsoleWrite ($sColor & $sSpace & ")" & @CRLF)
		Case Else

	EndSwitch

EndFunc

Func loggerObjectDictionnaryData ($oObject, $sName, $sColor, $sSpace)

	Local $aKeys = $oObject.Keys
	Local $nKeysSize = $oObject.Count

	If ($nKeysSize > 0) Then

		For $i=0 To $nKeysSize - 1

			Local $key = $aKeys[$i]
			Local $value = $oObject.Item($key)
			loggerData ($value, $sName & "." & $key, $sColor, $sSpace & "   ")

		Next

	Else
		loggerNoneData ($sColor, $sSpace & "   ")
	EndIf

EndFunc

Func loggerVariableData ($vVariable, $sType, $sName, $sColor, $sSpace)

	Switch ($sType)

		Case "String"
			ConsoleWrite ($sColor & $sSpace & $sName & " = " & '"' & $vVariable & '"' & @CRLF)
		Case "Keyword"
			Switch ($vVariable)
				Case Null
					ConsoleWrite ($sColor & $sSpace & $sName & " = " & "Null" & @CRLF)
				Case Else
					ConsoleWrite ($sColor & $sSpace & $sName & " = " & $vVariable & @CRLF)
			EndSwitch
		Case "UserFunction"
			ConsoleWrite ($sColor & $sSpace & $sName & " = " & FuncName ($vVariable) & "()" & @CRLF)
		Case Else
			ConsoleWrite ($sColor & $sSpace & $sName & " = " & $vVariable & @CRLF)
	EndSwitch

EndFunc

Func loggerNoneData ($sColor, $sSpace)
	ConsoleWrite ($sColor & $sSpace & "none" & @CRLF)
EndFunc