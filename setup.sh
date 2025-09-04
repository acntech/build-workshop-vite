#!/bin/bash

# Build Tools Workshop Setup Script
# This script helps automate the setup process for the workshop

echo "🚀 Welcome to the Build Tools Workshop Setup!"
echo "This script will help you set up the project dependencies."
echo ""

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first:"
    echo "   1. Go to https://nodejs.org/"
    echo "   2. Download and install the LTS version"
    echo "   3. Restart your terminal and run this script again"
    exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install npm first."
    exit 1
fi

echo "✅ Node.js version: $(node --version)"
echo "✅ npm version: $(npm --version)"
echo ""

# Install initial dependencies
echo "📦 Installing initial React dependencies..."
npm install

if [ $? -eq 0 ]; then
    echo "✅ Initial dependencies installed successfully!"
else
    echo "❌ Failed to install initial dependencies. Please check the error messages above."
    exit 1
fi

echo ""
echo "🎯 Workshop setup complete! You can now:"
echo "   1. Run 'npm start' to start the development server"
echo "   2. Follow the README.md for step-by-step instructions"
echo "   3. Open your browser to http://localhost:3000"
echo ""
echo "Happy coding! 🎉"
