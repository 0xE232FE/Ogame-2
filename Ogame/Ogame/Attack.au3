#include-once

#include "Ogame.au3"

#include "..\Telegram\Telegram.au3"

Func Attack ()
	Local $this = newVoidMap ()
	Return $this
EndFunc

Func attacked ($oMovement)

	Local $bAttacked = False

	If Not (MapExists ($__oOgame.Attack, $oMovement.id)) Then

		If ($oMovement.menaced) Then

			Switch ($oMovement.typeName)
				Case "Attaquer"
					$bAttacked = True
				Case "Attaque groupée"
					$bAttacked = True
				Case "Détruire"
					$bAttacked = True
			EndSwitch

		EndIf

	EndIf

	Return $bAttacked

EndFunc

Func attackAdvert ($oMovement)

	Local $sAdvert = _
	"[Warning] " & $__oOgame.player & " - " & $__oOgame.universe & @CRLF & _
	"   - Mission : " & $oMovement.typeName & @CRLF & _
	"   - Arrival : " & $oMovement.arrivalDate & @CRLF & _
	"   - Origin : " & $oMovement.originName & " " & $oMovement.originCoord & @CRLF & _
	"   - Destination : " & $oMovement.destName & " " & $oMovement.destCoord & @CRLF & _
	"   - Ships : " & @CRLF
	For $sKey In MapKeys ($oMovement.Ships)
		Local $nValue = $oMovement.Ships[$sKey]
		$sAdvert &= "      - " & $sKey & " : " & ThousandSep ($nValue) & @CRLF
	Next
	For $sKey In MapKeys ($oMovement.Cargo)
		Local $nValue = $oMovement.Cargo[$sKey]
		$sAdvert &= "      - " & $sKey & " : " & ThousandSep ($nValue) & @CRLF
	Next
	$sAdvert = StringTrimRight ($sAdvert, 1)

	attackAdvertTelegram ($sAdvert)
	attackAdvertNotification ($sAdvert)

	$__oOgame["Attack"][$oMovement.id] = Null

EndFunc

Func attackAdvertTelegram ($sAdvert)
	telegramSend ($sAdvert)
EndFunc

Func attackAdvertNotification ($sAdvert)
	TrayTip ("Ogame bot", $sAdvert, 15)
EndFunc