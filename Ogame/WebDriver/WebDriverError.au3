#include-once

#include "WebDriver.au3"

Func webDriverError ($func, $msg)
	MsgBox (0, "[WebDriverError]", FuncName ($func) & "() -> " & $msg)
EndFunc

Func webDriverWaitError ($func, $msg, $p1=Default, $p2=Default, $p3=Default, $p4=Default, $p5=Default, $p6=Default, $p7=Default, $p8=Default, $p9=Default, $p10=Default)

	Local $param = @NumParams - 2
	Local $id = MsgBox (5, "[WebDriverError]", FuncName ($func) & "() -> " & $msg)

	Switch ($id)
		Case 4
			Switch ($param)
				Case 0
					Call ($func)
				Case 1
					Call ($func, $p1)
				Case 2
					Call ($func, $p1, $p2)
				Case 3
					Call ($func, $p1, $p2, $p3)
				Case 4
					Call ($func, $p1, $p2, $p3, $p4)
				Case 5
					Call ($func, $p1, $p2, $p3, $p4, $p5)
				Case 6
					Call ($func, $p1, $p2, $p3, $p4, $p5, $p6)
				Case 7
					Call ($func, $p1, $p2, $p3, $p4, $p5, $p6, $p7)
				Case 8
					Call ($func, $p1, $p2, $p3, $p4, $p5, $p6, $p7, $p8)
				Case 9
					Call ($func, $p1, $p2, $p3, $p4, $p5, $p6, $p7, $p8, $p9)
				Case 10
					Call ($func, $p1, $p2, $p3, $p4, $p5, $p6, $p7, $p8, $p9, $p10)
			EndSwitch
		Case Else
			webDriverShutdown ()
	EndSwitch

EndFunc