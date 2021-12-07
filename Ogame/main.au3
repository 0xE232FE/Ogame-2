#include-once

#include <Date.au3>
#include <Array.au3>

#include "Gui\Gui.au3"
#include "Ogame\Ogame.au3"
#include "Others\Others.au3"
#include "Telegram\Telegram.au3"
#include "Telegram\Notifications.au3"
#include "WebDriver\WebDriver.au3"

main ()

Func main ()

	$__oGui = Gui ()
	$__oOgame = Ogame ()
	$__oWebDriver = WebDriver ()
	$__oCyclicTimer = CyclicTimer ()

	mainStartup ()

	While (True)
		cyclicTimerExecute ()
		Sleep (10)
	WEnd

EndFunc

Func mainStartup ()

	webDriverStartup ()
	guiStartup ()

	cyclicTimerAdd (webDriverRun, 100)
	cyclicTimerAdd (ogameRun)

EndFunc

Func mainShutdown ()

	webDriverShutdown ()
	guiShutdown ()

	Exit 0

EndFunc