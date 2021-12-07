#include-once

Global $__oTelegram = Null

$__oTelegram = Telegram ()

#include "..\lib\JSON.au3"
#include "..\lib\WinHttp.au3"

#include "..\Others\Map.au3"
#include "..\Others\Logger.au3"

Func Telegram ()

    Local $this = newVoidMap ()
	$this.WinHttpGet = ObjCreate ("WinHttp.WinHttpRequest.5.1")
	$this.WinHttpSend = ObjCreate ("WinHttp.WinHttpRequest.5.1")
	$this.url = "https://api.telegram.org/bot"
	$this.token = "5029334473:AAELsnLooMYfybNYn8FObxEYEcMjGF4IvUA"
	$this.chatId = 448196249
	$this.updateId = 0
	$this.log = True
    Return $this

EndFunc

Func telegramGetUpdate ()

	Local Static $bRequest = True

	If ($bRequest) Then

		Local $sUrl = $__oTelegram.url & $__oTelegram.token & "/getUpdates?offset=" & $__oTelegram.updateId
		$__oTelegram.WinHttpGet.Open("GET", $sUrl, True)
		$__oTelegram.WinHttpGet.Send()
		$bRequest = False

	Else

		If ($__oTelegram.WinHttpGet.WaitForResponse(0)) And ($__oTelegram.WinHttpGet.Status = 200) Then

			Local $tUpdate = telegramRead ($__oTelegram.WinHttpGet.ResponseText)
			$bRequest = True

			If ($tUpdate <> Null) Then

				$__oTelegram.updateId = $tUpdate.updateId + 1

				If ($__oTelegram.chatId = $tUpdate.chatId) Then
					logger ($__oTelegram.log, "Telegram", "telegramGetUpdate() -> chatId:" & $tUpdate.chatId & " updateId:" & $tUpdate.updateId & " messageId:" & $tUpdate.messageId & " from:" & $tUpdate.fromName & " text:" & $tUpdate.text)
				EndIf

			EndIf

		EndIf

	EndIf

EndFunc

Func telegramRead ($sJson)

	Local $oJson = Json_Decode($sJson)

	Local $bOk = Json_Get ($oJson, ".ok") == True
	Local $bPrivate = Json_Get ($oJson, ".result[0].message.chat.type") == "private"

	If ($bOk And $bPrivate) Then

		Local $oUpdate = newVoidMap ()
		$oUpdate.updateId = Json_Get ($oJson, ".result[0].update_id")
		$oUpdate.messageId = Json_Get ($oJson, ".result[0].message.message_id")
		$oUpdate.fromId = Json_Get ($oJson, ".result[0].message.from.id")
		$oUpdate.fromName = Json_Get ($oJson, ".result[0].message.from.first_name")
		$oUpdate.chatId = Json_Get ($oJson, ".result[0].message.chat.id")
		$oUpdate.text = Json_Get ($oJson, ".result[0].message.text")
		Return $oUpdate

	EndIf

	Return Null

EndFunc

Func telegramSend ($sData)

	Local $sUrl =  $__oTelegram.url & $__oTelegram.token & "/sendMessage?chat_id=" & $__oTelegram.chatId & "&text=" & __WinHttpURLEncode ($sData)
	$__oTelegram.WinHttpSend.Open("POST", $sUrl, False)
	$__oTelegram.WinHttpSend.Send($sData)

	If ($__oTelegram.WinHttpSend.Status = 200) Then

		Local $sResponse = $__oTelegram.WinHttpSend.ResponseText
		Local $oJson = Json_Decode($sResponse)
		Local $bOk = Json_Get ($oJson, ".ok") = True

		If ($bOk) Then

			Local $oUpdate = newVoidMap ()
			$oUpdate.fromId = Json_Get ($oJson, ".result.from.id")
			$oUpdate.fromName = Json_Get ($oJson, ".result.from.first_name")
			$oUpdate.toId = Json_Get ($oJson, ".result.chat.id")
			$oUpdate.toName = Json_Get ($oJson, ".result.chat.first_name")
			$oUpdate.text = Json_Get ($oJson, ".result.text")

			logger ($__oTelegram.log, "Telegram", "telegramSend() -> to:" & $oUpdate.toName & " text:" & $oUpdate.text)

		EndIf

	EndIf

EndFunc