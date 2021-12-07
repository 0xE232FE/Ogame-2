#include-once

Func mathMax ($v1, $v2, $v3=Default, $v4=Default, $v5=Default, $v6=Default, $v7=Default, $v8=Default, $v9=Default, $v10=Default, _
              $v11=Default, $v12=Default, $v13=Default, $v14=Default, $v15=Default, $v16=Default, $v17=Default, $v18=Default, $v19=Default, $v20=Default, _
              $v21=Default, $v22=Default, $v23=Default, $v24=Default, $v25=Default, $v26=Default, $v27=Default, $v28=Default, $v29=Default, $v30=Default, _
              $v31=Default, $v32=Default, $v33=Default, $v34=Default, $v35=Default, $v36=Default, $v37=Default, $v38=Default, $v39=Default, $v40=Default, _
              $v41=Default, $v42=Default, $v43=Default, $v44=Default, $v45=Default, $v46=Default, $v47=Default, $v48=Default, $v49=Default, $v50=Default, _
              $v51=Default, $v52=Default, $v53=Default, $v54=Default, $v55=Default, $v56=Default, $v57=Default, $v58=Default, $v59=Default, $v60=Default, _
              $v61=Default, $v62=Default, $v63=Default, $v64=Default, $v65=Default, $v66=Default, $v67=Default, $v68=Default, $v69=Default, $v70=Default, _
              $v71=Default, $v72=Default, $v73=Default, $v74=Default, $v75=Default, $v76=Default, $v77=Default, $v78=Default, $v79=Default, $v80=Default, _
              $v81=Default, $v82=Default, $v83=Default, $v84=Default, $v85=Default, $v86=Default, $v87=Default, $v88=Default, $v89=Default, $v90=Default, _
              $v91=Default, $v92=Default, $v93=Default, $v94=Default, $v95=Default, $v96=Default, $v97=Default, $v98=Default, $v99=Default, $v100=Default)

	Local $nParam = @NumParams
	Local $aValue[201] = [$v1,$v2,$v3,$v4,$v5,$v6,$v7,$v8,$v9,$v10,$v11,$v12,$v13,$v14,$v15,$v16,$v17,$v18,$v19,$v20,$v21,$v22,$v23,$v24,$v25,$v26,$v27,$v28,$v29,$v30,$v31,$v32,$v33,$v34,$v35,$v36,$v37,$v38,$v39,$v40,$v41,$v42,$v43,$v44,$v45,$v46,$v47,$v48,$v49,$v50,$v51,$v52,$v53,$v54,$v55,$v56,$v57,$v58,$v59,$v60,$v61,$v62,$v63,$v64,$v65,$v66,$v67,$v68,$v69,$v70,$v71,$v72,$v73,$v74,$v75,$v76,$v77,$v78,$v79,$v80,$v81,$v82,$v83,$v84,$v85,$v86,$v87,$v88,$v89,$v90,$v91,$v92,$v93,$v94,$v95,$v96,$v97,$v98,$v99,$v100]

	Local $max = $aValue[0]

	For $i=0 To $nParam - 1
		If ($max < $aValue[$i]) Then
			$max = $aValue[$i]
		EndIf
	Next

	Return $max

EndFunc

Func mathMin ($v1, $v2, $v3=Default, $v4=Default, $v5=Default, $v6=Default, $v7=Default, $v8=Default, $v9=Default, $v10=Default, _
              $v11=Default, $v12=Default, $v13=Default, $v14=Default, $v15=Default, $v16=Default, $v17=Default, $v18=Default, $v19=Default, $v20=Default, _
              $v21=Default, $v22=Default, $v23=Default, $v24=Default, $v25=Default, $v26=Default, $v27=Default, $v28=Default, $v29=Default, $v30=Default, _
              $v31=Default, $v32=Default, $v33=Default, $v34=Default, $v35=Default, $v36=Default, $v37=Default, $v38=Default, $v39=Default, $v40=Default, _
              $v41=Default, $v42=Default, $v43=Default, $v44=Default, $v45=Default, $v46=Default, $v47=Default, $v48=Default, $v49=Default, $v50=Default, _
              $v51=Default, $v52=Default, $v53=Default, $v54=Default, $v55=Default, $v56=Default, $v57=Default, $v58=Default, $v59=Default, $v60=Default, _
              $v61=Default, $v62=Default, $v63=Default, $v64=Default, $v65=Default, $v66=Default, $v67=Default, $v68=Default, $v69=Default, $v70=Default, _
              $v71=Default, $v72=Default, $v73=Default, $v74=Default, $v75=Default, $v76=Default, $v77=Default, $v78=Default, $v79=Default, $v80=Default, _
              $v81=Default, $v82=Default, $v83=Default, $v84=Default, $v85=Default, $v86=Default, $v87=Default, $v88=Default, $v89=Default, $v90=Default, _
              $v91=Default, $v92=Default, $v93=Default, $v94=Default, $v95=Default, $v96=Default, $v97=Default, $v98=Default, $v99=Default, $v100=Default)

	Local $nParam = @NumParams
	Local $aValue[201] = [$v1,$v2,$v3,$v4,$v5,$v6,$v7,$v8,$v9,$v10,$v11,$v12,$v13,$v14,$v15,$v16,$v17,$v18,$v19,$v20,$v21,$v22,$v23,$v24,$v25,$v26,$v27,$v28,$v29,$v30,$v31,$v32,$v33,$v34,$v35,$v36,$v37,$v38,$v39,$v40,$v41,$v42,$v43,$v44,$v45,$v46,$v47,$v48,$v49,$v50,$v51,$v52,$v53,$v54,$v55,$v56,$v57,$v58,$v59,$v60,$v61,$v62,$v63,$v64,$v65,$v66,$v67,$v68,$v69,$v70,$v71,$v72,$v73,$v74,$v75,$v76,$v77,$v78,$v79,$v80,$v81,$v82,$v83,$v84,$v85,$v86,$v87,$v88,$v89,$v90,$v91,$v92,$v93,$v94,$v95,$v96,$v97,$v98,$v99,$v100]

	Local $min = $aValue[0]

	For $i=0 To $nParam - 1
		If ($min > $aValue[$i]) Then
			$min = $aValue[$i]
		EndIf
	Next

	Return $min

EndFunc

Func mathGetPercent ($nNum, $nMax)
	Return ($nNum / $nMax) * 100
EndFunc

Func mathGetDistance ($coord_1, $coord_2)
	Return (Abs ($coord_1.x - $coord_2.x) ^ 2) + (Abs ($coord_1.y - $coord_2.y) ^ 2)
EndFunc

Func mathAtan2 ($y, $x)
	Return (2 * ATan ($y / ($x + Sqrt ($x * $x + $y * $y))))
EndFunc

Func mathAs3Random ()
	Return Random ()
EndFunc

Func mathAs3RandomTestPrecision ()

	Local $nLoop = 0
	Local $nSum = 0
	Local $nAverage = Null
	Local $nNum = Null

	While (1)

		$nNum = mathAs3Random ()
		$nSum += $nNum
		$nLoop += 1

		If Not (Mod ($nLoop, 100000)) Then
			$nAverage = $nSum / $nLoop
			ConsoleWrite ("loop:" & $nLoop & @CRLF & "average:" & $nAverage & @CRLF)
		EndIf

	WEnd

EndFunc