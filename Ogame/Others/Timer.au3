#include-once

Global $__timer = TimerInit ()

Func timerGetTime ()
	Return TimerDiff ($__timer)
EndFunc

Func timerGetTimeout ($time)
	Return $time + TimerDiff ($__timer)
EndFunc

Func timerGetTimeSpend ($oldTime)
	Return timerGetTime () - $oldTime
EndFunc

Func timerGetTimeLeft ($timer, $timeout)
	Local $timeLeft = $timeout - TimerDiff ($timer)
	Return $timeLeft < 0 ? 0 : $timeLeft
EndFunc