# Build Tools Workshop Setup Script (PowerShell)
# This script helps automate the setup process for the workshop

Write-Host "🚀 Welcome to the Build Tools Workshop Setup!" -ForegroundColor Green
Write-Host "This script will help you set up the project dependencies." -ForegroundColor White
Write-Host ""

# Check if Node.js is installed
try {
    $nodeVersion = node --version
    Write-Host "✅ Node.js version: $nodeVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Node.js is not installed. Please install Node.js first:" -ForegroundColor Red
    Write-Host "   1. Go to https://nodejs.org/" -ForegroundColor Yellow
    Write-Host "   2. Download and install the LTS version" -ForegroundColor Yellow
    Write-Host "   3. Restart your terminal and run this script again" -ForegroundColor Yellow
    exit 1
}

# Check if npm is installed
try {
    $npmVersion = npm --version
    Write-Host "✅ npm version: $npmVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ npm is not installed. Please install npm first." -ForegroundColor Red
    exit 1
}

Write-Host ""

# Install initial dependencies
Write-Host "📦 Installing initial React dependencies..." -ForegroundColor Blue
npm install

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Initial dependencies installed successfully!" -ForegroundColor Green
} else {
    Write-Host "❌ Failed to install initial dependencies. Please check the error messages above." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "🎯 Workshop setup complete! You can now:" -ForegroundColor Green
Write-Host "   1. Run 'npm start' to start the development server" -ForegroundColor White
Write-Host "   2. Follow the README.md for step-by-step instructions" -ForegroundColor White
Write-Host "   3. Open your browser to http://localhost:3000" -ForegroundColor White
Write-Host ""
Write-Host "Happy coding! 🎉" -ForegroundColor Green
