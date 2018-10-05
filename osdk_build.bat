@ECHO OFF


::
:: Initial check.
:: Verify if the SDK is correctly configurated
::
IF "%OSDK%"=="" GOTO ErCfg


::
:: Set the build paremeters
::
CALL osdk_config.bat


::
:: Launch the compilation of files
::
CALL %OSDK%\bin\make.bat %OSDKFILE%


ECHO Building DSK file

%OSDK%\bin\taptap ren build\%OSDKNAME%.tap "GTW" 0
%OSDK%\bin\taptap ren images\places\title.tap "title" 0
%OSDK%\bin\taptap ren images\places\airport.tap "airport" 0
%OSDK%\bin\taptap ren images\places\airport2.tap "airport2" 0
%OSDK%\bin\taptap ren images\places\bedroom.tap "bedroom" 0
%OSDK%\bin\taptap ren images\places\breakfast.tap "breakfast" 0
%OSDK%\bin\taptap ren images\places\busst.tap "busst" 0
%OSDK%\bin\taptap ren images\places\car.tap "car" 0
%OSDK%\bin\taptap ren images\places\cars.tap "cars" 0
%OSDK%\bin\taptap ren images\places\elevator.tap "elevator" 0
%OSDK%\bin\taptap ren images\places\fdoor.tap "fdoor" 0
%OSDK%\bin\taptap ren images\places\fmetro.tap "fmetro" 0
%OSDK%\bin\taptap ren images\places\gamble.tap "gamble" 0
%OSDK%\bin\taptap ren images\places\gameover.tap "gameover" 0
%OSDK%\bin\taptap ren images\places\mtrain.tap "mtrain" 0
%OSDK%\bin\taptap ren images\places\mydoor.tap "mydoor" 0
%OSDK%\bin\taptap ren images\places\myspot.tap "myspot" 0
%OSDK%\bin\taptap ren images\places\officeb.tap "officeb" 0
%OSDK%\bin\taptap ren images\places\shower.tap "shower" 0
%OSDK%\bin\taptap ren images\places\trail.tap "trail" 0
%OSDK%\bin\taptap ren images\places\view.tap "view" 0
%OSDK%\bin\taptap ren images\places\inbus.tap "inbus" 0
%OSDK%\bin\taptap ren font\font.tap "font" 0


%OSDK%\bin\tap2dsk -iCLS:GTW build\%OSDKNAME%.TAP font\font.tap images\places\inbus.tap images\places\view.tap images\places\trail.tap images\places\airport2.tap images\places\cars.tap images\places\gameover.tap images\places\gamble.tap images\places\breakfast.tap images\places\car.tap images\places\title.tap images\places\airport.tap images\places\bedroom.tap images\places\busst.tap images\places\elevator.tap images\places\fdoor.tap images\places\fmetro.tap images\places\mtrain.tap images\places\mydoor.tap images\places\myspot.tap images\places\officeb.tap images\places\shower.tap build\%OSDKNAME%.dsk
%OSDK%\bin\old2mfm build\%OSDKNAME%.dsk

pause
GOTO End


::
:: Outputs an error message
::
:ErCfg
ECHO == ERROR ==
ECHO The Oric SDK was not configured properly
ECHO You should have a OSDK environment variable setted to the location of the SDK
IF "%OSDKBRIEF%"=="" PAUSE
GOTO End


:End
