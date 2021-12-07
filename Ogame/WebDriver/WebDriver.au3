#include-once

Global $__oWebDriver = Null

#include "wd_core.au3"
#include "wd_helper.au3"
#include "wd_capabilities.au3"

#include "WebDriverHelp.au3"
#include "WebDriverError.au3"

#include "..\Others\Others.au3"

Func WebDriver ()
	Local $this = newVoidMap ()
	$this.session = Null
	$this.tabs = newVoidArray ()
	$this.url = ""
	$this.waitTime = 1
	Return $this
EndFunc

Func webDriverStartup ()

	$_WD_DEBUG = $_WD_DEBUG_None

	_WD_Option ('Driver', @ScriptDir & '\WebDriver\chromedriver.exe')
	_WD_Option ('Port', 9515)
	;_WD_Option ('DriverParams', '--log-path="' & @ScriptDir & '\WebDriver\chromedriver.log"')

	_WD_Startup ()

	Local $sCapabilities = _
	'{' & _
	'	"capabilities":' & _
	'	{' & _
	'		"alwaysMatch":' & _
	'		{' & _
	'			"acceptInsecureCerts":true,' & _
	'			"unhandledPromptBehavior": "ignore",' & _
	'			"goog:chromeOptions":' & _
	'			{' & _
	'				"w3c": true,' & _
	'				"excludeSwitches": ["enable-automation"],' & _
	'				"useAutomationExtension": false,' & _
	'				"prefs":' & _
	'				{' & _
	'					"credentials_enable_service": false' & _
	'				},' & _
	'				"args":["--user-data-dir=C:\\Users\\' & @UserName & '\\AppData\\Local\\Google\\Chrome\\User Data"]' & _
	'			}' & _
	'		}' & _
	'	}' & _
	'}'

	$__oWebDriver.session = _WD_CreateSession ($sCapabilities)

	If ($__oWebDriver.session = "") Then
		webDriverShutdown ()
	EndIf

EndFunc

Func webDriverShutdown ($data=Default, $exit=True)

	If ($data <> Default) Then
		MsgBox ($MB_TOPMOST, "[Erreur]", $data & @CRLF & "   >>>>> WebDriverShutdown()")
	EndIf

	If ($__oWebDriver.session <> "") Then
		_WD_DeleteSession ($__oWebDriver.session)
		_WD_Shutdown ()
	EndIf

	If ($exit) Then
		ConsoleWrite ("> WebDriverShutdown()" & @CRLF)
		Exit
	EndIf

EndFunc

Func webDriverRun ()

	webDriverCheckTabs ()
	webDriverSetUrl ()
	cyclicTimerAdd (webDriverRun, 100)

EndFunc