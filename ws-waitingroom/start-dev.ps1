Write-Host "Starting Zoom Video SDK Development Environment..." -ForegroundColor Green
Write-Host ""

Write-Host "Starting Auth Server (Port 4000)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd videosdk-auth-endpoint-sample; npm start" -WindowStyle Normal

Write-Host "Waiting 3 seconds..." -ForegroundColor Gray
Start-Sleep -Seconds 3

Write-Host "Starting React App (Port 5173)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd videosdk-ui-toolkit-react-sample; npm run dev" -WindowStyle Normal

Write-Host ""
Write-Host "Development environment is starting..." -ForegroundColor Green
Write-Host "Auth Server: http://localhost:4000" -ForegroundColor Cyan
Write-Host "React App: http://localhost:5173" -ForegroundColor Cyan
Write-Host ""
Write-Host "Press any key to close this window..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") 