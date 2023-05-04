@ECHO OFF
cmake --preset=nexstim -S . -B ..\BUILD_DCMTK_3.6.7 > .\build.log 2>&1
cmake --build ..\BUILD_DCMTK_3.6.7 --config Debug --target install >> .\build.log 2>&1
cmake --build ..\BUILD_DCMTK_3.6.7 --config Release --target install >> .\build.log 2>&1
cmake --build ..\BUILD_DCMTK_3.6.7 --config UsableDebug --target install >> .\build.log 2>&1
RMDIR /S /Q ..\BUILD_DCMTK_3.6.7\install\lib  >> .\build.log 2>&1
ROBOCOPY ..\BUILD_DCMTK_3.6.7\lib ..\BUILD_DCMTK_3.6.7\install\lib /E >> .\build.log 2>&1
ECHO Building of DCMTK ready.