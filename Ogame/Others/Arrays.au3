#include-once

#include <Array.au3>

Func newVoidArray ()
	Local $aArray[0]
	Return $aArray
EndFunc

Func newArray ($v1=Default, $v2=Default, $v3=Default, $v4=Default, $v5=Default, $v6=Default, $v7=Default, $v8=Default, $v9=Default, $v10=Default, _
			   $v11=Default, $v12=Default, $v13=Default, $v14=Default, $v15=Default, $v16=Default, $v17=Default, $v18=Default, $v19=Default, $v20=Default, _
			   $v21=Default, $v22=Default, $v23=Default, $v24=Default, $v25=Default, $v26=Default, $v27=Default, $v28=Default, $v29=Default, $v30=Default, _
			   $v31=Default, $v32=Default, $v33=Default, $v34=Default, $v35=Default, $v36=Default, $v37=Default, $v38=Default, $v39=Default, $v40=Default, _
			   $v41=Default, $v42=Default, $v43=Default, $v44=Default, $v45=Default, $v46=Default, $v47=Default, $v48=Default, $v49=Default, $v50=Default, _
			   $v51=Default, $v52=Default, $v53=Default, $v54=Default, $v55=Default, $v56=Default, $v57=Default, $v58=Default, $v59=Default, $v60=Default, _
			   $v61=Default, $v62=Default, $v63=Default, $v64=Default, $v65=Default, $v66=Default, $v67=Default, $v68=Default, $v69=Default, $v70=Default, _
			   $v71=Default, $v72=Default, $v73=Default, $v74=Default, $v75=Default, $v76=Default, $v77=Default, $v78=Default, $v79=Default, $v80=Default, _
			   $v81=Default, $v82=Default, $v83=Default, $v84=Default, $v85=Default, $v86=Default, $v87=Default, $v88=Default, $v89=Default, $v90=Default, _
			   $v91=Default, $v92=Default, $v93=Default, $v94=Default, $v95=Default, $v96=Default, $v97=Default, $v98=Default, $v99=Default, $v100=Default, _
			   $v101=Default, $v102=Default, $v103=Default, $v104=Default, $v105=Default, $v106=Default, $v107=Default, $v108=Default, $v109=Default, $v110=Default, _
			   $v111=Default, $v112=Default, $v113=Default, $v114=Default, $v115=Default, $v116=Default, $v117=Default, $v118=Default, $v119=Default, $v120=Default, _
			   $v121=Default, $v122=Default, $v123=Default, $v124=Default, $v125=Default, $v126=Default, $v127=Default, $v128=Default, $v129=Default, $v130=Default, _
			   $v131=Default, $v132=Default, $v133=Default, $v134=Default, $v135=Default, $v136=Default, $v137=Default, $v138=Default, $v139=Default, $v140=Default, _
			   $v141=Default, $v142=Default, $v143=Default, $v144=Default, $v145=Default, $v146=Default, $v147=Default, $v148=Default, $v149=Default, $v150=Default, _
			   $v151=Default, $v152=Default, $v153=Default, $v154=Default, $v155=Default, $v156=Default, $v157=Default, $v158=Default, $v159=Default, $v160=Default, _
			   $v161=Default, $v162=Default, $v163=Default, $v164=Default, $v165=Default, $v166=Default, $v167=Default, $v168=Default, $v169=Default, $v170=Default, _
			   $v171=Default, $v172=Default, $v173=Default, $v174=Default, $v175=Default, $v176=Default, $v177=Default, $v178=Default, $v179=Default, $v180=Default, _
			   $v181=Default, $v182=Default, $v183=Default, $v184=Default, $v185=Default, $v186=Default, $v187=Default, $v188=Default, $v189=Default, $v190=Default, _
			   $v191=Default, $v192=Default, $v193=Default, $v194=Default, $v195=Default, $v196=Default, $v197=Default, $v198=Default, $v199=Default, $v200=Default)

	Local $nParam = @NumParams
	Local $aReturn[$nParam]
	Local $array[200] = [$v1,$v2,$v3,$v4,$v5,$v6,$v7,$v8,$v9,$v10,$v11,$v12,$v13,$v14,$v15,$v16,$v17,$v18,$v19,$v20,$v21,$v22,$v23,$v24,$v25,$v26,$v27,$v28,$v29,$v30,$v31,$v32,$v33,$v34,$v35,$v36,$v37,$v38,$v39,$v40,$v41,$v42,$v43,$v44,$v45,$v46,$v47,$v48,$v49,$v50,$v51,$v52,$v53,$v54,$v55,$v56,$v57,$v58,$v59,$v60,$v61,$v62,$v63,$v64,$v65,$v66,$v67,$v68,$v69,$v70,$v71,$v72,$v73,$v74,$v75,$v76,$v77,$v78,$v79,$v80,$v81,$v82,$v83,$v84,$v85,$v86,$v87,$v88,$v89,$v90,$v91,$v92,$v93,$v94,$v95,$v96,$v97,$v98,$v99,$v100, _
						 $v101,$v102,$v103,$v104,$v105,$v106,$v107,$v108,$v109,$v110,$v111,$v112,$v113,$v114,$v115,$v116,$v117,$v118,$v119,$v120,$v121,$v122,$v123,$v124,$v125,$v126,$v127,$v128,$v129,$v130,$v131,$v132,$v133,$v134,$v135,$v136,$v137,$v138,$v139,$v140,$v141,$v142,$v143,$v144,$v145,$v146,$v147,$v148,$v149,$v150,$v151,$v152,$v153,$v154,$v155,$v156,$v157,$v158,$v159,$v160,$v161,$v162,$v163,$v164,$v165,$v166,$v167,$v168,$v169,$v170,$v171,$v172,$v173,$v174,$v175,$v176,$v177,$v178,$v179,$v180,$v181,$v182,$v183,$v184,$v185,$v186,$v187,$v188,$v189,$v190,$v191,$v192,$v193,$v194,$v195,$v196,$v197,$v198,$v199,$v200]

	For $i=0 To $nParam - 1
		$aReturn[$i] = $array[$i]
	Next

	Return $aReturn

EndFunc

Func arrayPush (ByRef $a, $v1, $v2=Default, $v3=Default, $v4=Default, $v5=Default, $v6=Default, $v7=Default, $v8=Default, $v9=Default, $v10=Default, _
			    $v11=Default, $v12=Default, $v13=Default, $v14=Default, $v15=Default, $v16=Default, $v17=Default, $v18=Default, $v19=Default, $v20=Default, _
			    $v21=Default, $v22=Default, $v23=Default, $v24=Default, $v25=Default, $v26=Default, $v27=Default, $v28=Default, $v29=Default, $v30=Default, _
			    $v31=Default, $v32=Default, $v33=Default, $v34=Default, $v35=Default, $v36=Default, $v37=Default, $v38=Default, $v39=Default, $v40=Default, _
			    $v41=Default, $v42=Default, $v43=Default, $v44=Default, $v45=Default, $v46=Default, $v47=Default, $v48=Default, $v49=Default, $v50=Default, _
			    $v51=Default, $v52=Default, $v53=Default, $v54=Default, $v55=Default, $v56=Default, $v57=Default, $v58=Default, $v59=Default, $v60=Default, _
			    $v61=Default, $v62=Default, $v63=Default, $v64=Default, $v65=Default, $v66=Default, $v67=Default, $v68=Default, $v69=Default, $v70=Default, _
			    $v71=Default, $v72=Default, $v73=Default, $v74=Default, $v75=Default, $v76=Default, $v77=Default, $v78=Default, $v79=Default, $v80=Default, _
			    $v81=Default, $v82=Default, $v83=Default, $v84=Default, $v85=Default, $v86=Default, $v87=Default, $v88=Default, $v89=Default, $v90=Default, _
			    $v91=Default, $v92=Default, $v93=Default, $v94=Default, $v95=Default, $v96=Default, $v97=Default, $v98=Default, $v99=Default, $v100=Default, _
			    $v101=Default, $v102=Default, $v103=Default, $v104=Default, $v105=Default, $v106=Default, $v107=Default, $v108=Default, $v109=Default, $v110=Default, _
			    $v111=Default, $v112=Default, $v113=Default, $v114=Default, $v115=Default, $v116=Default, $v117=Default, $v118=Default, $v119=Default, $v120=Default, _
			    $v121=Default, $v122=Default, $v123=Default, $v124=Default, $v125=Default, $v126=Default, $v127=Default, $v128=Default, $v129=Default, $v130=Default, _
			    $v131=Default, $v132=Default, $v133=Default, $v134=Default, $v135=Default, $v136=Default, $v137=Default, $v138=Default, $v139=Default, $v140=Default, _
			    $v141=Default, $v142=Default, $v143=Default, $v144=Default, $v145=Default, $v146=Default, $v147=Default, $v148=Default, $v149=Default, $v150=Default, _
			    $v151=Default, $v152=Default, $v153=Default, $v154=Default, $v155=Default, $v156=Default, $v157=Default, $v158=Default, $v159=Default, $v160=Default, _
			    $v161=Default, $v162=Default, $v163=Default, $v164=Default, $v165=Default, $v166=Default, $v167=Default, $v168=Default, $v169=Default, $v170=Default, _
			    $v171=Default, $v172=Default, $v173=Default, $v174=Default, $v175=Default, $v176=Default, $v177=Default, $v178=Default, $v179=Default, $v180=Default, _
			    $v181=Default, $v182=Default, $v183=Default, $v184=Default, $v185=Default, $v186=Default, $v187=Default, $v188=Default, $v189=Default, $v190=Default, _
			    $v191=Default, $v192=Default, $v193=Default, $v194=Default, $v195=Default, $v196=Default, $v197=Default, $v198=Default, $v199=Default, $v200=Default)

	Local $nParam = @NumParams - 1
	Local $aTempo[201] = [$v1,$v2,$v3,$v4,$v5,$v6,$v7,$v8,$v9,$v10,$v11,$v12,$v13,$v14,$v15,$v16,$v17,$v18,$v19,$v20,$v21,$v22,$v23,$v24,$v25,$v26,$v27,$v28,$v29,$v30,$v31,$v32,$v33,$v34,$v35,$v36,$v37,$v38,$v39,$v40,$v41,$v42,$v43,$v44,$v45,$v46,$v47,$v48,$v49,$v50,$v51,$v52,$v53,$v54,$v55,$v56,$v57,$v58,$v59,$v60,$v61,$v62,$v63,$v64,$v65,$v66,$v67,$v68,$v69,$v70,$v71,$v72,$v73,$v74,$v75,$v76,$v77,$v78,$v79,$v80,$v81,$v82,$v83,$v84,$v85,$v86,$v87,$v88,$v89,$v90,$v91,$v92,$v93,$v94,$v95,$v96,$v97,$v98,$v99,$v100, _
						  $v101,$v102,$v103,$v104,$v105,$v106,$v107,$v108,$v109,$v110,$v111,$v112,$v113,$v114,$v115,$v116,$v117,$v118,$v119,$v120,$v121,$v122,$v123,$v124,$v125,$v126,$v127,$v128,$v129,$v130,$v131,$v132,$v133,$v134,$v135,$v136,$v137,$v138,$v139,$v140,$v141,$v142,$v143,$v144,$v145,$v146,$v147,$v148,$v149,$v150,$v151,$v152,$v153,$v154,$v155,$v156,$v157,$v158,$v159,$v160,$v161,$v162,$v163,$v164,$v165,$v166,$v167,$v168,$v169,$v170,$v171,$v172,$v173,$v174,$v175,$v176,$v177,$v178,$v179,$v180,$v181,$v182,$v183,$v184,$v185,$v186,$v187,$v188,$v189,$v190,$v191,$v192,$v193,$v194,$v195,$v196,$v197,$v198,$v199,$v200]

	If (IsArray ($a)) Then

		Local $size = UBound ($a)
		ReDim $a[$size + $nParam]

		For $i=0 To $nParam - 1
			$a[$i + $size] = $aTempo[$i]
		Next

	Else

		$a = newVoidArray ()
		ReDim $a[$nParam]

		For $i=0 To $nParam - 1
			$a[$i] = $aTempo[$i]
		Next

	EndIf

EndFunc

Func arrayDelete (ByRef $a, $i1, $i2=Default, $i3=Default, $i4=Default, $i5=Default, $i6=Default, $i7=Default, $i8=Default, $i9=Default, $i10=Default, _
			      $i11=Default, $i12=Default, $i13=Default, $i14=Default, $i15=Default, $i16=Default, $i17=Default, $i18=Default, $i19=Default, $i20=Default, _
			      $i21=Default, $i22=Default, $i23=Default, $i24=Default, $i25=Default, $i26=Default, $i27=Default, $i28=Default, $i29=Default, $i30=Default, _
			      $i31=Default, $i32=Default, $i33=Default, $i34=Default, $i35=Default, $i36=Default, $i37=Default, $i38=Default, $i39=Default, $i40=Default, _
			      $i41=Default, $i42=Default, $i43=Default, $i44=Default, $i45=Default, $i46=Default, $i47=Default, $i48=Default, $i49=Default, $i50=Default, _
			      $i51=Default, $i52=Default, $i53=Default, $i54=Default, $i55=Default, $i56=Default, $i57=Default, $i58=Default, $i59=Default, $i60=Default, _
			      $i61=Default, $i62=Default, $i63=Default, $i64=Default, $i65=Default, $i66=Default, $i67=Default, $i68=Default, $i69=Default, $i70=Default, _
			      $i71=Default, $i72=Default, $i73=Default, $i74=Default, $i75=Default, $i76=Default, $i77=Default, $i78=Default, $i79=Default, $i80=Default, _
			      $i81=Default, $i82=Default, $i83=Default, $i84=Default, $i85=Default, $i86=Default, $i87=Default, $i88=Default, $i89=Default, $i90=Default, _
			      $i91=Default, $i92=Default, $i93=Default, $i94=Default, $i95=Default, $i96=Default, $i97=Default, $i98=Default, $i99=Default, $i100=Default, _
			      $i101=Default, $i102=Default, $i103=Default, $i104=Default, $i105=Default, $i106=Default, $i107=Default, $i108=Default, $i109=Default, $i110=Default, _
			      $i111=Default, $i112=Default, $i113=Default, $i114=Default, $i115=Default, $i116=Default, $i117=Default, $i118=Default, $i119=Default, $i120=Default, _
			      $i121=Default, $i122=Default, $i123=Default, $i124=Default, $i125=Default, $i126=Default, $i127=Default, $i128=Default, $i129=Default, $i130=Default, _
			      $i131=Default, $i132=Default, $i133=Default, $i134=Default, $i135=Default, $i136=Default, $i137=Default, $i138=Default, $i139=Default, $i140=Default, _
			      $i141=Default, $i142=Default, $i143=Default, $i144=Default, $i145=Default, $i146=Default, $i147=Default, $i148=Default, $i149=Default, $i150=Default, _
			      $i151=Default, $i152=Default, $i153=Default, $i154=Default, $i155=Default, $i156=Default, $i157=Default, $i158=Default, $i159=Default, $i160=Default, _
			      $i161=Default, $i162=Default, $i163=Default, $i164=Default, $i165=Default, $i166=Default, $i167=Default, $i168=Default, $i169=Default, $i170=Default, _
			      $i171=Default, $i172=Default, $i173=Default, $i174=Default, $i175=Default, $i176=Default, $i177=Default, $i178=Default, $i179=Default, $i180=Default, _
			      $i181=Default, $i182=Default, $i183=Default, $i184=Default, $i185=Default, $i186=Default, $i187=Default, $i188=Default, $i189=Default, $i190=Default, _
			      $i191=Default, $i192=Default, $i193=Default, $i194=Default, $i195=Default, $i196=Default, $i197=Default, $i198=Default, $i199=Default, $i200=Default)

	Local $nParam = @NumParams - 1
	Local $aTempo[201] = [$i1,$i2,$i3,$i4,$i5,$i6,$i7,$i8,$i9,$i10,$i11,$i12,$i13,$i14,$i15,$i16,$i17,$i18,$i19,$i20,$i21,$i22,$i23,$i24,$i25,$i26,$i27,$i28,$i29,$i30,$i31,$i32,$i33,$i34,$i35,$i36,$i37,$i38,$i39,$i40,$i41,$i42,$i43,$i44,$i45,$i46,$i47,$i48,$i49,$i50,$i51,$i52,$i53,$i54,$i55,$i56,$i57,$i58,$i59,$i60,$i61,$i62,$i63,$i64,$i65,$i66,$i67,$i68,$i69,$i70,$i71,$i72,$i73,$i74,$i75,$i76,$i77,$i78,$i79,$i80,$i81,$i82,$i83,$i84,$i85,$i86,$i87,$i88,$i89,$i90,$i91,$i92,$i93,$i94,$i95,$i96,$i97,$i98,$i99,$i100, _
						  $i101,$i102,$i103,$i104,$i105,$i106,$i107,$i108,$i109,$i110,$i111,$i112,$i113,$i114,$i115,$i116,$i117,$i118,$i119,$i120,$i121,$i122,$i123,$i124,$i125,$i126,$i127,$i128,$i129,$i130,$i131,$i132,$i133,$i134,$i135,$i136,$i137,$i138,$i139,$i140,$i141,$i142,$i143,$i144,$i145,$i146,$i147,$i148,$i149,$i150,$i151,$i152,$i153,$i154,$i155,$i156,$i157,$i158,$i159,$i160,$i161,$i162,$i163,$i164,$i165,$i166,$i167,$i168,$i169,$i170,$i171,$i172,$i173,$i174,$i175,$i176,$i177,$i178,$i179,$i180,$i181,$i182,$i183,$i184,$i185,$i186,$i187,$i188,$i189,$i190,$i191,$i192,$i193,$i194,$i195,$i196,$i197,$i198,$i199,$i200]

	If (IsArray ($a)) Then

		Local $index[$nParam]

		For $i=0 To $nParam - 1
			$index[$i] = $aTempo[$i]
		Next

		arraySort ($index, -1)

		For $i=0 To $nParam - 1

			Local $size = UBound ($a)

			If ($index[$i] < 0) Or ($index[$i] > $size - 1) Then
				ContinueLoop
			EndIf

			Local $newArray[$size - 1]

			For $j=0 To $index[$i] - 1
				$newArray[$j] = $a[$j]
			Next

			For $j=$index[$i]+1 To $size - 1
				$newArray[$j-1] = $a[$j]
			Next

			$a = $newArray

		Next

	EndIf

EndFunc

Func arrayReverse (ByRef $array, $iStart=0, $iEnd=UBound($array)-1)

	Local $tmp = 0

	For $i=$iStart To Floor (($iStart + $iEnd - 1) / 2)
		$tmp = $array[$i]
		$array[$i] = $array[$iEnd]
		$array[$iEnd] = $tmp
		$iEnd -= 1
	Next

EndFunc

Func arrayExtract (Const ByRef $array, $iStart=0, $iEnd=UBound($array)-1)

	If ($iStart > $iEnd) Or ($iEnd > UBound($array) - 1) Or Not (IsArray ($array)) Then
		Return Null
	EndIf

	Local $size = $iEnd - $iStart + 1
	Local $extract[$size]

	For $i=0 To $size - 1
		$extract[$i] = $array[$i + $iStart]
	Next

	Return $extract

EndFunc

Func arraySort (ByRef $array, $order, $iStart=0, $iEnd=UBound($array)-1)

	Switch ($order)
		Case 1
			arrayQuickSort1D ($array, $iStart, $iEnd)
		Case -1
			arrayQuickSort1D ($array, $iStart, $iEnd)
			arrayReverse ($array, $iStart, $iEnd)
	EndSwitch

EndFunc

Func arraySort2D (ByRef $array, $subIndex, $order, $iStart=0, $iEnd=UBound($array)-1)

	Local $nDim = UBound ($array, 0)

	If ($nDim == 2) Then
		arrayQuickSort2D ($array, $subIndex, $order, $iStart, $iEnd)
	EndIf

EndFunc

Func arrayQuickSort1D (ByRef $array, $iStart=0, $iEnd=UBound($array)-1)

	If (Not (IsArray ($array))) Then Return
	If $iEnd <= $iStart Then Return

	Local $vTmp = Null, $left = $iStart, $right = $iEnd, $vPivot = $array[Int (($iStart + $iEnd) / 2)]

	Do

		While ($array[$left] < $vPivot)
			$left += 1
		WEnd

		While ($array[$right] > $vPivot)
			$right -= 1
		WEnd

		If ($left <= $right) Then
			$vTmp = $array[$left]
			$array[$left] = $array[$right]
			$array[$right] = $vTmp
			$left += 1
			$right -= 1
		EndIf

	Until ($left > $right)

	arrayQuickSort1D($array, $iStart, $right)
	arrayQuickSort1D($array, $left, $iEnd)

EndFunc

Func arrayQuickSort2D (ByRef $array, $subIndex, $order, $iStart=0, $iEnd=UBound($array)-1)

	If (Not (IsArray ($array))) Then Return
	If $iEnd <= $iStart Then Return

	Local $vTmp = Null, $subSize = UBound ($array, 2), $left = $iStart, $right = $iEnd, $vPivot = $array[Int (($iStart + $iEnd) / 2)][$subIndex]

	Do

		While ($order * ($array[$left][$subIndex] - $vPivot) < 0)
			$left += 1
		WEnd

		While ($order * ($array[$right][$subIndex] - $vPivot) > 0)
			$right -= 1
		WEnd

		If ($left <= $right) Then

			For $i=0 To $subSize - 1
				$vTmp = $array[$left][$i]
				$array[$left][$i] = $array[$right][$i]
				$array[$right][$i] = $vTmp
			Next

			$left += 1
			$right -= 1

		EndIf

	Until ($left > $right)

	arrayQuickSort2D($array, $subIndex, $order, $iStart, $right)
	arrayQuickSort2D($array, $subIndex, $order, $left, $iEnd)

EndFunc

Func arrayConvert ($array, $type, $exclude=Null)

	Local $bExclude = False

	For $i=0 To UBound ($array) - 1

		$bExclude = False

		If (IsArray ($exclude)) Then
			For $j=0 To UBound ($exclude) - 1
				If ($exclude[$j] = $i) Then
					$bExclude = True
					ExitLoop
				EndIf
			Next
		EndIf

		If Not ($bExclude) Then
			$array[$i] = $type ($array[$i])
		EndIf

	Next

	Return $array

EndFunc

Func arraySetValue (ByRef $a, $v, $i1, $i2=Default, $i3=Default, $i4=Default, $i5=Default, $i6=Default, $i7=Default, $i8=Default, $i9=Default, $i10=Default)

	Local $nParam = @NumParams - 2

	If (UBound ($a) > $i1) Then

		Switch ($nParam)
			Case 1
				$a[$i1] = $v
			Case 2
				arraySetValue ($a[$i1], $v, $i2)
			Case 3
				arraySetValue ($a[$i1], $v, $i2, $i3)
			Case 4
				arraySetValue ($a[$i1], $v, $i2, $i3, $i4)
			Case 5
				arraySetValue ($a[$i1], $v, $i2, $i3, $i4, $i5)
			Case 6
				arraySetValue ($a[$i1], $v, $i2, $i3, $i4, $i5, $i6)
			Case 7
				arraySetValue ($a[$i1], $v, $i2, $i3, $i4, $i5, $i6, $i7)
			Case 8
				arraySetValue ($a[$i1], $v, $i2, $i3, $i4, $i5, $i6, $i7, $i8)
			Case 9
				arraySetValue ($a[$i1], $v, $i2, $i3, $i4, $i5, $i6, $i7, $i8, $i9)
			Case 10
				arraySetValue ($a[$i1], $v, $i2, $i3, $i4, $i5, $i6, $i7, $i8, $i9, $i10)
		EndSwitch

	EndIf

EndFunc

Func arrayToString ($a, $s=",")

	Local $str = ""

	If (IsArray ($a)) Then

		For $i=0 To UBound ($a) - 1
			$str &= $a[$i] & $s
		Next

		$str = StringTrimRight ($str, 1)

	EndIf

	Return $str

EndFunc