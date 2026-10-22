@echo off
title Border Security AI - Document Screening System
echo ======================================================================
echo    Starting Border Security AI Document Screening System...
echo ======================================================================
echo.
echo Starting frontend server...
start /b cmd /c "npm run dev"
echo Waiting for server to initialize...
timeout /t 3 /nobreak >nul
echo Opening application in browser...
start msedge http://localhost:5173 2>nul || start http://localhost:5173
echo.
echo ======================================================================
echo    Application is running at http://localhost:5173
echo    (Also accessible via http://127.0.0.1:5173)
echo.
echo    Keep this command window OPEN while using the application!
echo ======================================================================
echo.
pause

