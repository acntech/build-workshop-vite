# 🚀 Build Tools Workshop for New Joiners

Welcome to our comprehensive workshop on building code into artifacts! This hands-on tutorial will take you through the entire journey from setting up your development environment to building, running, and debugging a React application.

## 📋 What You'll Learn

- How to install and set up Node.js and npm
- Creating a React application from scratch
- Managing dependencies with npm
- Building and running applications
- Debugging build errors and understanding build output
- Adding styling with CSS frameworks
- Setting up linting tools and fixing code quality issues
- Best practices for modern web development

## 🎯 Workshop Objectives

By the end of this workshop, you'll have:
- A fully functional React application
- Experience with common build tools and dependencies
- Skills to debug and fix common build issues
- Understanding of code quality tools and linting
- Confidence to start your own projects

---

## 📚 Table of Contents

1. [Prerequisites](#prerequisites)
2. [Step 1: Installing Node.js and npm](#step-1-installing-nodejs-and-npm)
3. [Step 2: Setting Up Your First React App](#step-2-setting-up-your-first-react-app)
4. [Step 3: Understanding the Project Structure](#step-3-understanding-the-project-structure)
5. [Step 4: Running Your Application](#step-4-running-your-application)
6. [Step 5: Adding Dependencies](#step-5-adding-dependencies)
7. [Step 6: Introducing Build Errors (Learning Exercise)](#step-6-introducing-build-errors-learning-exercise)
8. [Step 7: Adding Styling Dependencies](#step-7-adding-styling-dependencies)
9. [Step 8: Setting Up Linting](#step-8-setting-up-linting)
10. [Step 9: Fixing Linting Errors](#step-9-fixing-linting-errors)
11. [Step 10: Building for Production](#step-10-building-for-production)
12. [Step 11: Adding Tests with React Testing Library](#step-11-adding-tests-with-react-testing-library)
13. [Step 12: Setting Up GitHub Actions CI/CD Pipeline](#step-12-setting-up-github-actions-cicd-pipeline)
14. [Troubleshooting](#troubleshooting)
15. [Next Steps](#next-steps)

---

## Prerequisites

- A computer with Windows, macOS, or Linux
- Administrator/sudo access for installing software
- A text editor (we recommend Visual Studio Code)
- Basic understanding of HTML, CSS, and JavaScript
- Enthusiasm to learn! 🎉

---

## Step 1: Installing Node.js and npm

Node.js is a JavaScript runtime that allows you to run JavaScript outside of a browser. npm (Node Package Manager) comes bundled with Node.js and helps you manage project dependencies.

> 💡 **Pro Tip:** Consider using Node Version Manager (nvm) to manage multiple Node.js versions:
> - **Windows**: Install nvm-windows from [https://github.com/coreybutler/nvm-windows](https://github.com/coreybutler/nvm-windows)
> - **macOS/Linux**: Install nvm from [https://github.com/nvm-sh/nvm](https://github.com/nvm-sh/nvm)
> 
> With nvm, you can easily switch between Node.js versions:
> ```bash
> nvm install --lts
> nvm use --lts
> ```

### 1.1 Download Node.js

1. Go to [https://nodejs.org/](https://nodejs.org/)
2. Download the **LTS (Long Term Support)** version - this is the most stable
3. The website should automatically detect your operating system

### 1.2 Install Node.js

**Windows:**
- Run the downloaded `.msi` file
- Follow the installation wizard
- Make sure to check "Add to PATH" option

**macOS:**
- Run the downloaded `.pkg` file
- Follow the installation wizard

**Linux (Ubuntu/Debian):**
```bash
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
```

### 1.3 Verify Installation

Open your terminal/command prompt and run:

```bash
node --version
npm --version
```

You should see version numbers like:
```
v18.17.0
9.6.7
```

> 💡 **Tip:** If you see "command not found" errors, you may need to restart your terminal or add Node.js to your PATH manually.

### 1.4 Update npm (Optional but Recommended)

```bash
npm install -g npm@latest
```

---

## Step 2: Setting Up Your First React App

React is a popular JavaScript library for building user interfaces. We'll use Vite, which is a fast, modern build tool that provides an excellent development experience with instant hot module replacement.

### 2.1 Create a New React Application

```bash
npm create vite@latest {your app name}
cd {your app name}
npm install
```

When prompted:
1. Select "React" as the framework
2. Choose "JavaScript" as the variant (or TypeScript if you prefer)

> 💡 **What is Vite?** Vite is a build tool that provides fast development server startup and instant hot module replacement. It's much faster than traditional bundlers and has become the modern standard for React development.

### 2.2 Explore What Was Created

The command above created a new directory with a complete React application powered by Vite. Let's see what was generated:

```bash
ls -la
# or on Windows:
dir
```

You should see files like:
- `package.json` - Project configuration and dependencies
- `package-lock.json` - Exact dependency versions
- `node_modules/` - Installed dependencies
- `public/` - Static files
- `src/` - Source code
- `index.html` - Main HTML file (note: this is in the root, not in public/)
- `vite.config.js` - Vite configuration

---

## Step 3: Understanding the Project Structure

Let's examine the key files in your new React project:

### 3.1 package.json
This file contains:
- Project metadata (name, version, description)
- Dependencies (libraries your project needs)
- Scripts (commands you can run)

Open `package.json` and you'll see something like:

```json
{
  "name": "my-build-workshop",
  "version": "0.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "lint": "eslint . --ext js,jsx --report-unused-disable-directives --max-warnings 0",
    "lint:fix": "eslint . --ext js,jsx --fix",
    "preview": "vite preview"
  },
  "dependencies": {
    "react": "^18.2.0",
    "react-dom": "^18.2.0"
  },
  "devDependencies": {
    "@vitejs/plugin-react": "^4.2.1",
    "eslint": "^8.57.0",
    "eslint-plugin-react": "^7.34.1",
    "eslint-plugin-react-hooks": "^4.6.0",
    "eslint-plugin-react-refresh": "^0.4.6",
    "vite": "^5.2.0"
  }
}
```

### 3.2 src/App.jsx
This is your main React component. Open it to see the default React application code.

### 3.3 index.html
This is the HTML template where your React app will be mounted. Note that with Vite, this file is in the root directory, not in a public folder.

### 3.4 vite.config.js
This file contains Vite-specific configuration for your build process.

---

## Step 4: Running Your Application

### 4.1 Start the Development Server

```bash
npm run dev
```

This command:
- Starts Vite's development server
- Opens your browser automatically (or shows you the URL to visit)
- Watches for file changes and reloads instantly with Hot Module Replacement (HMR)

You should see your React app running at `http://localhost:5173` (Vite's default port)

> 🎉 **Congratulations!** You've successfully created and run your first React application!

### 4.2 Make Your First Change

1. Open `src/App.jsx` in your text editor
2. Find the text that says "Vite + React" or similar
3. Change it to "Welcome to the Build Tools Workshop!"
4. Save the file
5. Watch the browser automatically reload with your changes instantly

> 🚀 **Amazing!** Notice how fast the changes appear - this is Vite's Hot Module Replacement in action!

---

## Step 5: Adding Dependencies

Real applications need external libraries. Let's add some useful dependencies to our project.

### 5.1 Adding Axios for HTTP Requests

```bash
npm install axios
```

### 5.2 Adding Moment.js for Date Handling

```bash
npm install moment
```

### 5.3 Update Your App to Use Dependencies

Replace the contents of `src/App.jsx` with:

```javascript
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import moment from 'moment';
import './App.css';

function App() {
  const [currentTime, setCurrentTime] = useState('');
  const [joke, setJoke] = useState('Loading...');

  useEffect(() => {
    // Update time every second
    const timer = setInterval(() => {
      setCurrentTime(moment().format('MMMM Do YYYY, h:mm:ss a'));
    }, 1000);

    // Fetch a programming joke
    fetchJoke();

    return () => clearInterval(timer);
  }, []);

  const fetchJoke = async () => {
    try {
      const response = await axios.get('https://official-joke-api.appspot.com/jokes/programming/random');
      setJoke(`${response.data[0].setup} - ${response.data[0].punchline}`);
    } catch (error) {
      setJoke('Failed to load joke. Check your internet connection!');
    }
  };

  return (
    <div className="App">
      <header className="App-header">
        <h1>🚀 Build Tools Workshop</h1>
        <p>Welcome to learning about build tools!</p>
        
        <div className="info-section">
          <h2>Current Time</h2>
          <p>{currentTime}</p>
        </div>

        <div className="info-section">
          <h2>Programming Joke of the Moment</h2>
          <p>{joke}</p>
          <button onClick={fetchJoke}>Get New Joke</button>
        </div>
      </header>
    </div>
  );
}

export default App;
```

### 5.4 Test Your Changes

Save the file and check your browser. You should see:
- A live updating clock
- A programming joke that changes when you click the button

---

## Step 6: Introducing Build Errors (Learning Exercise)

Let's intentionally introduce some errors to learn how to read and fix build output.

### 6.1 Syntax Error Exercise

Replace the `fetchJoke` function in `src/App.jsx` with this broken version:

```javascript
const fetchJoke = async () => {
  try {
    const response = await axios.get('https://official-joke-api.appspot.com/jokes/programming/random');
    setJoke(`${response.data[0].setup} - ${response.data[0].punchline}`);
  } catch (error) {
    setJoke('Failed to load joke. Check your internet connection!');
  }
  // Missing closing brace - this will cause an error!
```

Save the file and observe:
1. The terminal shows compilation errors
2. The browser shows an error overlay
3. The error message tells you exactly what's wrong and where

### 6.2 Reading Error Messages

The error output will look something like:
```
✘ [ERROR] Expected "}" but found end of file

    src/App.jsx:32:1:
      32 │   }
         ╵   ^

  The file ends here but we expected to find a closing "}" to match the opening "{" here:

    src/App.jsx:20:25:
      20 │ const fetchJoke = async () => {
         ╵                         ^
```

### 6.3 Fix the Error

Add the missing `}` before the catch block:

```javascript
const fetchJoke = async () => {
  try {
    const response = await axios.get('https://official-joke-api.appspot.com/jokes/programming/random');
    setJoke(`${response.data[0].setup} - ${response.data[0].punchline}`);
  } catch (error) {
    setJoke('Failed to load joke. Check your internet connection!');
  }
};
```

> 🎯 **Learning Point:** Vite provides immediate feedback about errors in your code with clear, helpful error messages. The development server shows errors both in the terminal and in an overlay in your browser. Always read the error messages carefully - they usually tell you exactly what's wrong and where to fix it.

---

## Step 7: Adding Styling Dependencies

Let's make our app look better by adding a CSS framework.

### 7.1 Install Bootstrap

```bash
npm install bootstrap
```

### 7.2 Import Bootstrap

Add this import to the top of `src/App.jsx`:

```javascript
import 'bootstrap/dist/css/bootstrap.min.css';
```

### 7.3 Update App.css

Replace the contents of `src/App.css` with:

```css
.App {
  text-align: center;
  min-height: 100vh;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 2rem;
}

.App-header {
  max-width: 800px;
  margin: 0 auto;
}

.info-section {
  background: rgba(255, 255, 255, 0.1);
  border-radius: 10px;
  padding: 2rem;
  margin: 2rem 0;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
}

.info-section h2 {
  color: #ffd700;
  margin-bottom: 1rem;
}

.btn-primary {
  background: #ff6b6b;
  border: none;
  padding: 0.75rem 1.5rem;
  border-radius: 25px;
  font-weight: bold;
  transition: all 0.3s ease;
}

.btn-primary:hover {
  background: #ff5252;
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(255, 107, 107, 0.3);
}

.time-display {
  font-family: 'Courier New', monospace;
  font-size: 1.2rem;
  background: rgba(0, 0, 0, 0.3);
  padding: 1rem;
  border-radius: 5px;
  display: inline-block;
}

.joke-text {
  font-style: italic;
  line-height: 1.6;
  margin: 1rem 0;
}
```

### 7.4 Update the JSX to Use Bootstrap Classes

First, update your imports in `src/App.jsx` to include Bootstrap:

```javascript
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import moment from 'moment';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';
```

Then update your `App.jsx` return statement:

```javascript
return (
  <div className="App">
    <header className="App-header">
      <h1 className="display-4 mb-4">🚀 Build Tools Workshop</h1>
      <p className="lead">Welcome to learning about build tools!</p>
      
      <div className="row">
        <div className="col-md-6">
          <div className="info-section">
            <h2>⏰ Current Time</h2>
            <p className="time-display">{currentTime}</p>
          </div>
        </div>
        
        <div className="col-md-6">
          <div className="info-section">
            <h2>😄 Programming Joke</h2>
            <p className="joke-text">{joke}</p>
            <button className="btn btn-primary btn-lg" onClick={fetchJoke}>
              Get New Joke
            </button>
          </div>
        </div>
      </div>
    </header>
  </div>
);
```

Now your app should look much more professional with Bootstrap styling!

---

## Step 8: Setting Up Linting

Linting helps maintain code quality by checking for potential errors and enforcing coding standards.

### 8.1 Install ESLint and Additional Plugins

Vite comes with ESLint pre-configured, but let's update to the modern flat config and add additional plugins:

```bash
npm install --save-dev @eslint/js eslint-plugin-react eslint-plugin-react-hooks
```

### 8.2 Update ESLint Configuration

Replace the existing `.eslintrc.cjs` file with a modern `eslint.config.js` file (ESLint 9+ flat config format):

```javascript
import js from '@eslint/js';
import react from 'eslint-plugin-react';
import reactHooks from 'eslint-plugin-react-hooks';
import reactRefresh from 'eslint-plugin-react-refresh';

export default [
  {
    ignores: ['dist'],
  },
  {
    files: ['**/*.{js,jsx}'],
    languageOptions: {
      ecmaVersion: 2020,
      globals: {
        ...globalThis,
      },
      parserOptions: {
        ecmaVersion: 'latest',
        ecmaFeatures: { jsx: true },
        sourceType: 'module',
      },
    },
    settings: { 
      react: { version: '18.3' } 
    },
    plugins: {
      react,
      'react-hooks': reactHooks,
      'react-refresh': reactRefresh,
    },
    rules: {
      ...js.configs.recommended.rules,
      ...react.configs.recommended.rules,
      ...react.configs['jsx-runtime'].rules,
      ...reactHooks.configs.recommended.rules,
      'react-refresh/only-export-components': [
        'warn',
        { allowConstantExport: true },
      ],
      'no-unused-vars': 'error',
      'no-console': 'warn',
      'react/prop-types': 'error',
      'react-hooks/rules-of-hooks': 'error',
      'react-hooks/exhaustive-deps': 'warn',
      'semi': ['error', 'always'],
      'quotes': ['error', 'single'],
      'indent': ['error', 2],
    },
  },
];
```

### 8.3 Linting Scripts

The linting scripts are already configured in your `package.json`. You can run:

```bash
npm run lint        # Check for linting issues
npm run lint:fix    # Auto-fix issues where possible
```

---

## Step 9: Fixing Linting Errors

Now let's introduce some code that will trigger linting errors, then fix them.

### 9.1 Add Code with Linting Issues

Replace your `src/App.jsx` with this version that has several linting issues:

```javascript
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import moment from 'moment';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';

function App() {
  const [currentTime, setCurrentTime] = useState('');
  const [joke, setJoke] = useState('Loading...');
  const unusedVariable = "This variable is never used"; // Linting error: unused variable

  useEffect(() => {
    const timer = setInterval(() => {
      setCurrentTime(moment().format('MMMM Do YYYY, h:mm:ss a'));
    }, 1000);

    fetchJoke();

    return () => clearInterval(timer);
  }, []); // Linting warning: missing dependency

  const fetchJoke = async () => {
    try {
      const response = await axios.get("https://official-joke-api.appspot.com/jokes/programming/random") // Missing semicolon
      console.log("Fetching joke...") // Console warning + missing semicolon + wrong quotes
      setJoke(`${response.data[0].setup} - ${response.data[0].punchline}`)
    } catch (error) {
      console.log(error) // Console warning + missing semicolon
      setJoke("Failed to load joke. Check your internet connection!") // Wrong quotes + missing semicolon
    }
  }; // This function should be defined before useEffect

  const handleJokeClick = () => {
    console.log("Button clicked") // Console warning + missing semicolon + wrong quotes
    fetchJoke()
  } // Missing semicolon

  return (
    <div className="App">
      <header className="App-header">
        <h1 className="display-4 mb-4">🚀 Build Tools Workshop</h1>
        <p className="lead">Welcome to learning about build tools!</p>
        
        <div className="row">
          <div className="col-md-6">
            <div className="info-section">
              <h2>⏰ Current Time</h2>
              <p className="time-display">{currentTime}</p>
            </div>
          </div>
          
          <div className="col-md-6">
            <div className="info-section">
              <h2>😄 Programming Joke</h2>
              <p className="joke-text">{joke}</p>
              <button className="btn btn-primary btn-lg" onClick={handleJokeClick}>
                Get New Joke
              </button>
            </div>
          </div>
        </div>
      </header>
    </div>
  );
}

export default App;
```

### 9.2 Run the Linter

```bash
npm run lint
```

You'll see output like:
```
  5:9   error  'unusedVariable' is assigned a value but never used  no-unused-vars
  18:5  warning  React Hook useEffect has missing dependencies: 'fetchJoke'  react-hooks/exhaustive-deps
  22:85  error  Missing semicolon  semi
  23:7   warning  Unexpected console statement  no-console
  23:36  error  Missing semicolon  semi
  23:36  error  Strings must use singlequote  quotes
  25:7   warning  Unexpected console statement  no-console
  25:25  error  Missing semicolon  semi
  26:7   warning  Unexpected console statement  no-console
  26:75  error  Missing semicolon  semi
  26:75  error  Strings must use singlequote  quotes
  32:7   warning  Unexpected console statement  no-console
  32:32  error  Missing semicolon  semi
  32:32  error  Strings must use singlequote  quotes
  33:15  error  Missing semicolon  semi
  34:3   error  Missing semicolon  semi
```

### 9.3 Fix the Linting Errors

Here's the corrected version:

```javascript
import React, { useState, useEffect, useCallback } from 'react';
import axios from 'axios';
import moment from 'moment';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';

function App() {
  const [currentTime, setCurrentTime] = useState('');
  const [joke, setJoke] = useState('Loading...');

  const fetchJoke = useCallback(async () => {
    try {
      const response = await axios.get('https://official-joke-api.appspot.com/jokes/programming/random');
      setJoke(`${response.data[0].setup} - ${response.data[0].punchline}`);
    } catch (error) {
      setJoke('Failed to load joke. Check your internet connection!');
    }
  }, []);

  useEffect(() => {
    const timer = setInterval(() => {
      setCurrentTime(moment().format('MMMM Do YYYY, h:mm:ss a'));
    }, 1000);

    fetchJoke();

    return () => clearInterval(timer);
  }, [fetchJoke]);

  const handleJokeClick = () => {
    fetchJoke();
  };

  return (
    <div className="App">
      <header className="App-header">
        <h1 className="display-4 mb-4">🚀 Build Tools Workshop</h1>
        <p className="lead">Welcome to learning about build tools!</p>
        
        <div className="row">
          <div className="col-md-6">
            <div className="info-section">
              <h2>⏰ Current Time</h2>
              <p className="time-display">{currentTime}</p>
            </div>
          </div>
          
          <div className="col-md-6">
            <div className="info-section">
              <h2>😄 Programming Joke</h2>
              <p className="joke-text">{joke}</p>
              <button className="btn btn-primary btn-lg" onClick={handleJokeClick}>
                Get New Joke
              </button>
            </div>
          </div>
        </div>
      </header>
    </div>
  );
}

export default App;
```

### 9.4 Verify the Fixes

```bash
npm run lint
```

You should now see no errors! 🎉

---

## Step 10: Building for Production

### 10.1 Create a Production Build

```bash
npm run build
```

This command:
- Creates optimized, minified files using Vite's build process
- Generates a `dist/` directory with your built application
- Prepares your app for deployment
- Uses Rollup under the hood for optimal bundling

### 10.2 Preview the Production Build

Vite provides a built-in preview command:

```bash
npm run preview
```

This serves your built application locally so you can test the production build.

Visit the URL shown (usually `http://localhost:4173`) to see your production build!

### 10.3 Compare Development vs Production

Notice the differences:
- **Development**: Large file sizes, readable code, instant hot reloading
- **Production**: Small file sizes, minified code, optimized for performance
- **Build tool**: Vite uses esbuild for development and Rollup for production builds

---

## Troubleshooting

### Common Issues and Solutions

**"command not found" errors:**
- Make sure Node.js is properly installed
- Restart your terminal
- Check your PATH environment variable

**Port already in use:**
- Vite uses port 5173 by default
- Try a different port: `npm run dev -- --port 3001`
- Or kill the process using the port

**Module not found errors:**
- Run `npm install` to ensure all dependencies are installed
- Delete `node_modules/` and `package-lock.json`, then run `npm install`

**Linting errors:**
- Read the error messages carefully
- Use `npm run lint:fix` to auto-fix some issues
- Check the ESLint documentation for specific rules

**Build fails:**
- Check for syntax errors in your code
- Ensure all dependencies are properly installed
- Look at the build output for specific error messages
- Try deleting `node_modules` and running `npm install` again

## Step 11: Adding Tests with React Testing Library

Testing is crucial for maintaining code quality and catching bugs early. Let's add tests to our application.

### 11.1 Install Testing Dependencies

React Testing Library and Jest come pre-configured with Vite, but let's add some additional testing utilities:

```bash
npm install --save-dev @testing-library/jest-dom @testing-library/user-event
```

### 11.2 Set up Test Configuration

Create a `src/setupTests.js` file:

```javascript
import '@testing-library/jest-dom';
```

### 11.3 Create Your First Test

Create a new file `src/App.test.jsx`:

```javascript
import { render, screen, waitFor } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { vi } from 'vitest';
import App from './App';

// Mock axios to avoid making real API calls in tests
vi.mock('axios');
import axios from 'axios';

describe('App Component', () => {
  beforeEach(() => {
    // Reset mocks before each test
    vi.clearAllMocks();
  });

  test('renders workshop title', () => {
    render(<App />);
    const titleElement = screen.getByText(/Build Tools Workshop/i);
    expect(titleElement).toBeInTheDocument();
  });

  test('displays current time section', () => {
    render(<App />);
    const timeSection = screen.getByText(/Current Time/i);
    expect(timeSection).toBeInTheDocument();
  });

  test('displays programming joke section', () => {
    render(<App />);
    const jokeSection = screen.getByText(/Programming Joke/i);
    expect(jokeSection).toBeInTheDocument();
  });

  test('clicking joke button triggers new joke fetch', async () => {
    const mockJokeResponse = {
      data: [{
        setup: 'Why do programmers prefer dark mode?',
        punchline: 'Because light attracts bugs!'
      }]
    };

    axios.get.mockResolvedValueOnce(mockJokeResponse);

    render(<App />);
    const jokeButton = screen.getByText(/Get New Joke/i);
    
    await userEvent.click(jokeButton);

    await waitFor(() => {
      expect(axios.get).toHaveBeenCalledWith(
        'https://official-joke-api.appspot.com/jokes/programming/random'
      );
    });
  });

  test('handles joke fetch error gracefully', async () => {
    axios.get.mockRejectedValueOnce(new Error('Network error'));

    render(<App />);
    
    await waitFor(() => {
      const errorMessage = screen.getByText(/Failed to load joke/i);
      expect(errorMessage).toBeInTheDocument();
    });
  });
});
```

### 11.4 Update package.json Scripts

Add test scripts to your `package.json`:

```json
{
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "lint": "eslint . --ext js,jsx --report-unused-disable-directives --max-warnings 0",
    "lint:fix": "eslint . --ext js,jsx --fix",
    "preview": "vite preview",
    "test": "vitest",
    "test:ui": "vitest --ui",
    "test:coverage": "vitest --coverage"
  }
}
```

### 11.5 Install Vitest for Testing

```bash
npm install --save-dev vitest @vitest/ui @vitest/coverage-v8 jsdom
```

### 11.6 Configure Vitest

Update your `vite.config.js`:

```javascript
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  test: {
    globals: true,
    environment: 'jsdom',
    setupFiles: './src/setupTests.js',
  },
})
```

### 11.7 Run Your Tests

```bash
npm test
```

You should see your tests run and pass! 🎉

---

## Step 12: Setting Up GitHub Actions CI/CD Pipeline

Let's set up automated testing and deployment using GitHub Actions.

### 12.1 Create GitHub Actions Workflow

Create a `.github/workflows/ci-cd.yml` file in your project root:

```yaml
name: CI/CD Pipeline

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main ]

jobs:
  test:
    runs-on: ubuntu-latest

    strategy:
      matrix:
        node-version: [18.x, 20.x]

    steps:
    - name: Checkout code
      uses: actions/checkout@v4

    - name: Use Node.js ${{ matrix.node-version }}
      uses: actions/setup-node@v4
      with:
        node-version: ${{ matrix.node-version }}
        cache: 'npm'

    - name: Install dependencies
      run: npm ci

    - name: Run linting
      run: npm run lint

    - name: Run tests
      run: npm test

    - name: Run build
      run: npm run build

    - name: Upload build artifacts
      uses: actions/upload-artifact@v4
      with:
        name: build-files-${{ matrix.node-version }}
        path: dist/

  deploy:
    needs: test
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/main' && github.event_name == 'push'

    steps:
    - name: Checkout code
      uses: actions/checkout@v4

    - name: Use Node.js 20.x
      uses: actions/setup-node@v4
      with:
        node-version: 20.x
        cache: 'npm'

    - name: Install dependencies
      run: npm ci

    - name: Build project
      run: npm run build

    - name: Deploy to GitHub Pages
      uses: peaceiris/actions-gh-pages@v3
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: ./dist
```

### 12.2 Understanding the Pipeline

This GitHub Actions workflow:

1. **Triggers**: Runs on pushes to `main`/`develop` branches and pull requests to `main`
2. **Matrix Testing**: Tests against multiple Node.js versions (18.x and 20.x)
3. **Quality Checks**: Runs linting, tests, and builds
4. **Deployment**: Automatically deploys to GitHub Pages when changes are pushed to `main`

### 12.3 Set Up GitHub Pages (Optional)

To enable GitHub Pages deployment:

1. Go to your GitHub repository settings
2. Navigate to "Pages" section
3. Select "GitHub Actions" as the source
4. Your app will be deployed automatically when you push to main

### 12.4 Add Status Badges to README

Add these badges to the top of your README to show build status:

```markdown
![CI/CD Pipeline](https://github.com/your-username/my-build-workshop/workflows/CI/CD%20Pipeline/badge.svg)
![Node.js Version](https://img.shields.io/badge/node-%3E%3D18.0.0-brightgreen)
```

### 12.5 Testing the Pipeline

1. Commit your changes and push to GitHub
2. Go to the "Actions" tab in your repository
3. Watch your pipeline run automatically
4. Check that all steps pass successfully

---

## Next Steps

Congratulations! You've completed the Build Tools Workshop. Here's what you can explore next:

### 🔍 Further Learning

1. **TypeScript**: Add type safety to your JavaScript
2. **State Management**: Explore Redux or Context API for complex state
3. **Performance**: Learn about code splitting and optimization techniques
4. **Advanced Testing**: Explore integration testing and end-to-end testing with Playwright or Cypress
5. **Deployment**: Deploy your app to platforms like Netlify, Vercel, or AWS

### 🛠️ Advanced Build Tools

- **Webpack**: Understanding module bundlers and build processes
- **Docker**: Containerizing your applications
- **Monorepos**: Managing multiple packages with tools like Lerna or Nx

---

## 🎉 Workshop Complete!

You've successfully:
- ✅ Set up a development environment with Node.js and npm
- ✅ Created a React application from scratch using Vite
- ✅ Added and managed dependencies
- ✅ Debugged build errors by reading error output
- ✅ Implemented styling with external CSS frameworks
- ✅ Set up and used linting tools for code quality
- ✅ Built your application for production
- ✅ Added comprehensive tests with React Testing Library
- ✅ Set up automated CI/CD pipelines with GitHub Actions

You're now ready to start building amazing web applications with modern build tools! Remember, the best way to learn is by building projects and experimenting with new tools and libraries.

### 📚 Resources

- [React Documentation](https://reactjs.org/docs)
- [Vite Documentation](https://vitejs.dev/guide/)
- [npm Documentation](https://docs.npmjs.com/)
- [ESLint Rules](https://eslint.org/docs/rules/)
- [React Testing Library](https://testing-library.com/docs/react-testing-library/intro/)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)

Happy coding! 🚀
