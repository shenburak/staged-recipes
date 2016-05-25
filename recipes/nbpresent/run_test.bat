set "PHANTOMJS_EXECUTABLE=%SRC_DIR%\node_modules\.bin\phantomjs"

cd /D "%SRC_DIR%"

CALL npm install || EXIT /B 1
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%

CALL npm run test || EXIT /B 1
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%
