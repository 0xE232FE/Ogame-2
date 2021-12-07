#include-once

Func RepSpecChar ($sData)

	Local $aSearch = ["ÀÁÂÃÄÅÆ", "Ç", "ÈÉÊË", "ÌÍÎÏ", "Ð", "Ñ", "ÒÓÔÕÖØŒ", "Š", "þ", "ÙÚÛÜ", "ÝŸ", "àáâãäåæ", "ç", "èéêë", "ìíîï", "ð", "ñ", "òóôõöøœ", "š", "Þ", "ùúûü", "ýÿ"]
	Local $aReplac = ["A", "C", "E", "I", "D", "N", "O", "S", "P", "U", "Y", "a", "c", "e", "i", "d", "n", "o", "s", "p", "u", "y"]

	Local $size_1 = UBound ($aSearch)
	Local $size_2 = UBound ($aReplac)

	For $i=0 To $size_1 - 1
		$sData = StringRegExpReplace ($sData, "[" & $aSearch[$i] & "]{1,100}", $aReplac[$i])
	Next

	Return $sData

EndFunc

Func ThousandSep ($nData)

	Return StringRegExpReplace ($nData, '(\A\d{1,3}(?=(\d{3})+\z)|\d{3}(?=\d))', '\1.')

EndFunc