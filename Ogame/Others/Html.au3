#include-once

Func HtmlFile ($sHtml)

	Local $oHtml = ObjCreate('HtmlFile')

	If Not (IsObj ($oHtml)) Then
		MsgBox (0, "HtmlFile", "Html not an object")
	EndIf

	$oHtml.Body.InnerHTML = $sHtml

	If ($oHtml.Body.InnerHTML = "") Then
		MsgBox (0, "HtmlFile", "Html.Body.InnerHTML no content")
	EndIf

	Return $oHtml

EndFunc

Func HtmlElementValid ($oElem)

	If (IsObj ($oElem)) Then
		Return True
	EndIf

	Return False

EndFunc