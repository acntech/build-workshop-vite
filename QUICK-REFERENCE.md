# 📋 Quick Reference Card - Build Tools Workshop

## Essential Commands

### Node.js & npm
```bash
# Check versions
node --version
npm --version

# Install dependencies
npm install

# Install specific package
npm install package-name

# Install dev dependency
npm install --save-dev package-name

# Update npm
npm install -g npm@latest
```

### React Development
```bash
# Create new React app
npx create-react-app my-app

# Start development server
npm start

# Build for production
npm run build

# Run tests
npm test
```

### Linting
```bash
# Run linter
npm run lint

# Auto-fix issues
npm run lint:fix

# Check specific file
npx eslint src/App.js
```

## Common Error Types

### Syntax Errors
- **Missing brackets**: `{ } [ ] ( )`
- **Missing semicolons**: `;`
- **Unmatched quotes**: `'` or `"`

### Import/Export Errors
- **Case sensitivity**: `./App` vs `./app`
- **Missing file extensions**: `./utils` vs `./utils.js`
- **Default vs named imports**

### Dependency Errors
- **Module not found**: Run `npm install`
- **Version conflicts**: Check `package.json`

## Debugging Checklist

1. **Read the error message completely**
2. **Check the file and line number**
3. **Look for syntax issues**
4. **Verify imports are correct**
5. **Check if dependencies are installed**
6. **Try restarting the dev server**

## File Structure
```
my-app/
├── public/
│   └── index.html
├── src/
│   ├── App.js
│   ├── App.css
│   ├── index.js
│   └── index.css
├── package.json
├── package-lock.json
└── .eslintrc.json
```

## Keyboard Shortcuts (VS Code)

- **Ctrl+`** - Open terminal
- **Ctrl+Shift+P** - Command palette
- **Ctrl+S** - Save file
- **Ctrl+F** - Find in file
- **F12** - Go to definition
- **Ctrl+/** - Toggle comment

## Browser DevTools

- **F12** - Open DevTools
- **Console tab** - View JavaScript errors
- **Network tab** - Check API requests
- **Elements tab** - Inspect HTML/CSS

## package.json Scripts

```json
{
  "scripts": {
    "start": "react-scripts start",     // Development server
    "build": "react-scripts build",     // Production build
    "test": "react-scripts test",       // Run tests
    "lint": "eslint src/**/*.js",       // Check code quality
    "lint:fix": "eslint src/**/*.js --fix"  // Auto-fix issues
  }
}
```

## Useful npm Packages

### UI Libraries
- `bootstrap` - CSS framework
- `material-ui` - React components
- `styled-components` - CSS-in-JS

### Utilities
- `axios` - HTTP requests
- `moment` - Date handling
- `lodash` - Utility functions

### Development Tools
- `eslint` - Code linting
- `prettier` - Code formatting
- `husky` - Git hooks

## Environment Variables

Create `.env` file in project root:
```
REACT_APP_API_URL=https://api.example.com
REACT_APP_API_KEY=your-key-here
```

Use in code:
```javascript
const apiUrl = process.env.REACT_APP_API_URL;
```

## Common Patterns

### API Call with Error Handling
```javascript
const fetchData = async () => {
  try {
    const response = await axios.get('/api/data');
    setData(response.data);
  } catch (error) {
    setError('Failed to load data');
  }
};
```

### useEffect Hook
```javascript
useEffect(() => {
  // Effect logic here
  
  return () => {
    // Cleanup logic here
  };
}, [dependencies]); // Dependency array
```

### Event Handlers
```javascript
const handleClick = () => {
  // Handle click event
};

const handleSubmit = (event) => {
  event.preventDefault();
  // Handle form submission
};
```

## Troubleshooting Quick Fixes

### Port Already in Use
```bash
npm start -- --port 3001
```

### Clear npm Cache
```bash
npm cache clean --force
```

### Reinstall Dependencies
```bash
rm -rf node_modules package-lock.json
npm install
```

### Reset Git (if needed)
```bash
git stash
git checkout main
git pull origin main
```

## Help Resources

- **React Docs**: https://reactjs.org/docs
- **npm Docs**: https://docs.npmjs.com/
- **ESLint Rules**: https://eslint.org/docs/rules/
- **Stack Overflow**: https://stackoverflow.com/
- **MDN Web Docs**: https://developer.mozilla.org/

---

*Keep this reference handy during development!* 🚀
