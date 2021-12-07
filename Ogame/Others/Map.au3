#include-once

Func newVoidMap ()
	Local $mMap[]
	Return $mMap
EndFunc

Func newMap ($k1=Default, $v1=Default, $k2=Default, $v2=Default, $k3=Default, $v3=Default, $k4=Default, $v4=Default, $k5=Default, $v5=Default, $k6=Default, $v6=Default, $k7=Default, $v7=Default, $k8=Default, $v8=Default, $k9=Default, $v9=Default, $k10=Default, $v10=Default, _
			  $k11=Default, $v11=Default, $k12=Default, $v12=Default, $k13=Default, $v13=Default, $k14=Default, $v14=Default, $k15=Default, $v15=Default, $k16=Default, $v16=Default, $k17=Default, $v17=Default, $k18=Default, $v18=Default, $k19=Default, $v19=Default, $k20=Default, $v20=Default, _
			 $k21=Default, $v21=Default, $k22=Default, $v22=Default, $k23=Default, $v23=Default, $k24=Default, $v24=Default, $k25=Default, $v25=Default, $k26=Default, $v26=Default, $k27=Default, $v27=Default, $k28=Default, $v28=Default, $k29=Default, $v29=Default, $k30=Default, $v30=Default, _
			 $k31=Default, $v31=Default, $k32=Default, $v32=Default, $k33=Default, $v33=Default, $k34=Default, $v34=Default, $k35=Default, $v35=Default, $k36=Default, $v36=Default, $k37=Default, $v37=Default, $k38=Default, $v38=Default, $k39=Default, $v39=Default, $k40=Default, $v40=Default, _
			 $k41=Default, $v41=Default, $k42=Default, $v42=Default, $k43=Default, $v43=Default, $k44=Default, $v44=Default, $k45=Default, $v45=Default, $k46=Default, $v46=Default, $k47=Default, $v47=Default, $k48=Default, $v48=Default, $k49=Default, $v49=Default, $k50=Default, $v50=Default, _
			 $k51=Default, $v51=Default, $k52=Default, $v52=Default, $k53=Default, $v53=Default, $k54=Default, $v54=Default, $k55=Default, $v55=Default, $k56=Default, $v56=Default, $k57=Default, $v57=Default, $k58=Default, $v58=Default, $k59=Default, $v59=Default, $k60=Default, $v60=Default, _
			 $k61=Default, $v61=Default, $k62=Default, $v62=Default, $k63=Default, $v63=Default, $k64=Default, $v64=Default, $k65=Default, $v65=Default, $k66=Default, $v66=Default, $k67=Default, $v67=Default, $k68=Default, $v68=Default, $k69=Default, $v69=Default, $k70=Default, $v70=Default, _
			 $k71=Default, $v71=Default, $k72=Default, $v72=Default, $k73=Default, $v73=Default, $k74=Default, $v74=Default, $k75=Default, $v75=Default, $k76=Default, $v76=Default, $k77=Default, $v77=Default, $k78=Default, $v78=Default, $k79=Default, $v79=Default, $k80=Default, $v80=Default, _
			 $k81=Default, $v81=Default, $k82=Default, $v82=Default, $k83=Default, $v83=Default, $k84=Default, $v84=Default, $k85=Default, $v85=Default, $k86=Default, $v86=Default, $k87=Default, $v87=Default, $k88=Default, $v88=Default, $k89=Default, $v89=Default, $k90=Default, $v90=Default, _
			 $k91=Default, $v91=Default, $k92=Default, $v92=Default, $k93=Default, $v93=Default, $k94=Default, $v94=Default, $k95=Default, $v95=Default, $k96=Default, $v96=Default, $k97=Default, $v97=Default, $k98=Default, $v98=Default, $k99=Default, $v99=Default, $k100=Default, $v100=Default, _
			 $k101=Default, $v101=Default, $k102=Default, $v102=Default, $k103=Default, $v103=Default, $k104=Default, $v104=Default, $k105=Default, $v105=Default, $k106=Default, $v106=Default, $k107=Default, $v107=Default, $k108=Default, $v108=Default, $k109=Default, $v109=Default, $k110=Default, $v110=Default, _
			 $k111=Default, $v111=Default, $k112=Default, $v112=Default, $k113=Default, $v113=Default, $k114=Default, $v114=Default, $k115=Default, $v115=Default, $k116=Default, $v116=Default, $k117=Default, $v117=Default, $k118=Default, $v118=Default, $k119=Default, $v119=Default, $k120=Default, $v120=Default, _
			 $k121=Default, $v121=Default, $k122=Default, $v122=Default, $k123=Default, $v123=Default, $k124=Default, $v124=Default, $k125=Default, $v125=Default, $k126=Default, $v126=Default, $k127=Default, $v127=Default, $k128=Default, $v128=Default, $k129=Default, $v129=Default, $k130=Default, $v130=Default, _
			 $k131=Default, $v131=Default, $k132=Default, $v132=Default, $k133=Default, $v133=Default, $k134=Default, $v134=Default, $k135=Default, $v135=Default, $k136=Default, $v136=Default, $k137=Default, $v137=Default, $k138=Default, $v138=Default, $k139=Default, $v139=Default, $k140=Default, $v140=Default, _
			 $k141=Default, $v141=Default, $k142=Default, $v142=Default, $k143=Default, $v143=Default, $k144=Default, $v144=Default, $k145=Default, $v145=Default, $k146=Default, $v146=Default, $k147=Default, $v147=Default, $k148=Default, $v148=Default, $k149=Default, $v149=Default, $k150=Default, $v150=Default, _
			 $k151=Default, $v151=Default, $k152=Default, $v152=Default, $k153=Default, $v153=Default, $k154=Default, $v154=Default, $k155=Default, $v155=Default, $k156=Default, $v156=Default, $k157=Default, $v157=Default, $k158=Default, $v158=Default, $k159=Default, $v159=Default, $k160=Default, $v160=Default, _
			 $k161=Default, $v161=Default, $k162=Default, $v162=Default, $k163=Default, $v163=Default, $k164=Default, $v164=Default, $k165=Default, $v165=Default, $k166=Default, $v166=Default, $k167=Default, $v167=Default, $k168=Default, $v168=Default, $k169=Default, $v169=Default, $k170=Default, $v170=Default, _
			 $k171=Default, $v171=Default, $k172=Default, $v172=Default, $k173=Default, $v173=Default, $k174=Default, $v174=Default, $k175=Default, $v175=Default, $k176=Default, $v176=Default, $k177=Default, $v177=Default, $k178=Default, $v178=Default, $k179=Default, $v179=Default, $k180=Default, $v180=Default, _
			 $k181=Default, $v181=Default, $k182=Default, $v182=Default, $k183=Default, $v183=Default, $k184=Default, $v184=Default, $k185=Default, $v185=Default, $k186=Default, $v186=Default, $k187=Default, $v187=Default, $k188=Default, $v188=Default, $k189=Default, $v189=Default, $k190=Default, $v190=Default, _
			 $k191=Default, $v191=Default, $k192=Default, $v192=Default, $k193=Default, $v193=Default, $k194=Default, $v194=Default, $k195=Default, $v195=Default, $k196=Default, $v196=Default, $k197=Default, $v197=Default, $k198=Default, $v198=Default, $k199=Default, $v199=Default, $k200=Default, $v200=Default)

	Local $nParam = @NumParams

	If Not (Mod ($nParam, 2)) Then

		Local $mReturn = newVoidMap ()
		Local $keys[200] = [$k1,$k2,$k3,$k4,$k5,$k6,$k7,$k8,$k9,$k10,$k11,$k12,$k13,$k14,$k15,$k16,$k17,$k18,$k19,$k20,$k21,$k22,$k23,$k24,$k25,$k26,$k27,$k28,$k29,$k30,$k31,$k32,$k33,$k34,$k35,$k36,$k37,$k38,$k39,$k40,$k41,$k42,$k43,$k44,$k45,$k46,$k47,$k48,$k49,$k50,$k51,$k52,$k53,$k54,$k55,$k56,$k57,$k58,$k59,$k60,$k61,$k62,$k63,$k64,$k65,$k66,$k67,$k68,$k69,$k70,$k71,$k72,$k73,$k74,$k75,$k76,$k77,$k78,$k79,$k80,$k81,$k82,$k83,$k84,$k85,$k86,$k87,$k88,$k89,$k90,$k91,$k92,$k93,$k94,$k95,$k96,$k97,$k98,$k99,$k100,$k101,$k102,$k103,$k104,$k105,$k106,$k107,$k108,$k109,$k110,$k111,$k112,$k113,$k114,$k115,$k116,$k117,$k118,$k119,$k120,$k121,$k122,$k123,$k124,$k125,$k126,$k127,$k128,$k129,$k130,$k131,$k132,$k133,$k134,$k135,$k136,$k137,$k138,$k139,$k140,$k141,$k142,$k143,$k144,$k145,$k146,$k147,$k148,$k149,$k150,$k151,$k152,$k153,$k154,$k155,$k156,$k157,$k158,$k159,$k160,$k161,$k162,$k163,$k164,$k165,$k166,$k167,$k168,$k169,$k170,$k171,$k172,$k173,$k174,$k175,$k176,$k177,$k178,$k179,$k180,$k181,$k182,$k183,$k184,$k185,$k186,$k187,$k188,$k189,$k190,$k191,$k192,$k193,$k194,$k195,$k196,$k197,$k198,$k199,$k200]
		Local $values[200] = [$v1,$v2,$v3,$v4,$v5,$v6,$v7,$v8,$v9,$v10,$v11,$v12,$v13,$v14,$v15,$v16,$v17,$v18,$v19,$v20,$v21,$v22,$v23,$v24,$v25,$v26,$v27,$v28,$v29,$v30,$v31,$v32,$v33,$v34,$v35,$v36,$v37,$v38,$v39,$v40,$v41,$v42,$v43,$v44,$v45,$v46,$v47,$v48,$v49,$v50,$v51,$v52,$v53,$v54,$v55,$v56,$v57,$v58,$v59,$v60,$v61,$v62,$v63,$v64,$v65,$v66,$v67,$v68,$v69,$v70,$v71,$v72,$v73,$v74,$v75,$v76,$v77,$v78,$v79,$v80,$v81,$v82,$v83,$v84,$v85,$v86,$v87,$v88,$v89,$v90,$v91,$v92,$v93,$v94,$v95,$v96,$v97,$v98,$v99,$v100,$v101,$v102,$v103,$v104,$v105,$v106,$v107,$v108,$v109,$v110,$v111,$v112,$v113,$v114,$v115,$v116,$v117,$v118,$v119,$v120,$v121,$v122,$v123,$v124,$v125,$v126,$v127,$v128,$v129,$v130,$v131,$v132,$v133,$v134,$v135,$v136,$v137,$v138,$v139,$v140,$v141,$v142,$v143,$v144,$v145,$v146,$v147,$v148,$v149,$v150,$v151,$v152,$v153,$v154,$v155,$v156,$v157,$v158,$v159,$v160,$v161,$v162,$v163,$v164,$v165,$v166,$v167,$v168,$v169,$v170,$v171,$v172,$v173,$v174,$v175,$v176,$v177,$v178,$v179,$v180,$v181,$v182,$v183,$v184,$v185,$v186,$v187,$v188,$v189,$v190,$v191,$v192,$v193,$v194,$v195,$v196,$v197,$v198,$v199,$v200]

		For $i=0 To (@NumParams / 2) - 1
			$mReturn[$keys[$i]] = $values[$i]
		Next

		Return $mReturn

	EndIf

	Return Null

EndFunc

Func mapGetValue ($m, $k1, $k2=Default, $k3=Default, $k4=Default, $k5=Default, $k6=Default, $k7=Default, $k8=Default, $k9=Default, $k10=Default)

	Local $nParam = @NumParams - 1

	If (MapExists ($m, $k1)) Then

		Switch ($nParam)
			Case 1
				Return $m[$k1]
			Case 2
				Return mapGetValue ($m[$k1], $k2)
			Case 3
				Return mapGetValue ($m[$k1], $k2, $k3)
			Case 4
				Return mapGetValue ($m[$k1], $k2, $k3, $k4)
			Case 5
				Return mapGetValue ($m[$k1], $k2, $k3, $k4, $k5)
			Case 6
				Return mapGetValue ($m[$k1], $k2, $k3, $k4, $k5, $k6)
			Case 7
				Return mapGetValue ($m[$k1], $k2, $k3, $k4, $k5, $k6, $k7)
			Case 8
				Return mapGetValue ($m[$k1], $k2, $k3, $k4, $k5, $k6, $k7, $k8)
			Case 9
				Return mapGetValue ($m[$k1], $k2, $k3, $k4, $k5, $k6, $k7, $k8, $k9)
			Case 10
				Return mapGetValue ($m[$k1], $k2, $k3, $k4, $k5, $k6, $k7, $k8, $k9, $k10)
		EndSwitch

	EndIf

	Return Null

EndFunc

Func mapSetValue (ByRef $m, $v, $k1, $k2=Default, $k3=Default, $k4=Default, $k5=Default, $k6=Default, $k7=Default, $k8=Default, $k9=Default, $k10=Default)

	Local $nParam = @NumParams - 2

	If (MapExists ($m, $k1)) Then

		Switch ($nParam)
			Case 1
				$m[$k1] = $v
			Case 2
				mapSetValue ($m[$k1], $v, $k2)
			Case 3
				mapSetValue ($m[$k1], $v, $k2, $k3)
			Case 4
				mapSetValue ($m[$k1], $v, $k2, $k3, $k4)
			Case 5
				mapSetValue ($m[$k1], $v, $k2, $k3, $k4, $k5)
			Case 6
				mapSetValue ($m[$k1], $v, $k2, $k3, $k4, $k5, $k6)
			Case 7
				mapSetValue ($m[$k1], $v, $k2, $k3, $k4, $k5, $k6, $k7)
			Case 8
				mapSetValue ($m[$k1], $v, $k2, $k3, $k4, $k5, $k6, $k7, $k8)
			Case 9
				mapSetValue ($m[$k1], $v, $k2, $k3, $k4, $k5, $k6, $k7, $k8, $k9)
			Case 10
				mapSetValue ($m[$k1], $v, $k2, $k3, $k4, $k5, $k6, $k7, $k8, $k9, $k10)
		EndSwitch

	EndIf

EndFunc

Func mapKeyIsException ($k, $a)

	If (UBound ($a) > 0) Then
		For $e In $a
			If ($k == $e) Then
				Return True
			EndIf
		Next
	EndIf

	Return False

EndFunc