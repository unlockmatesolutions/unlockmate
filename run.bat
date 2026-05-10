@echo off
echo ==============================
echo Starting Full App (Backend + Frontend)
echo ==============================

cd app\backend

echo Installing backend dependencies...
py -m pip install -r requirements.txt

echo Starting backend...
start cmd /k py -m uvicorn server:app --reload

cd ..\frontend

echo Installing frontend dependencies...
npm install

echo Starting frontend...
start cmd /k npm start

echo ==============================
echo App started!
echo Backend: http://localhost:8000
echo Frontend: http://localhost:3000
echo ==============================

pause