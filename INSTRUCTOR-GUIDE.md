# 👨‍🏫 Instructor Guide - Build Tools Workshop

## Overview
This workshop is designed to teach new joiners about modern JavaScript build tools through hands-on experience with a React application. The workshop covers installation, development, debugging, and deployment.

## Workshop Duration
**Estimated Time: 3-4 hours**
- Setup and introduction: 30 minutes
- Core development: 2 hours
- Debugging and tooling: 1-1.5 hours

## Prerequisites for Participants
- Basic knowledge of HTML, CSS, and JavaScript
- Text editor installed (preferably VS Code)
- Administrator access on their machine

## Learning Objectives
By the end of this workshop, participants will:
1. Understand how to set up a modern JavaScript development environment
2. Know how to manage dependencies with npm
3. Be able to read and debug build error messages
4. Understand the role of linting in code quality
5. Have experience with building applications for production

## Workshop Structure

### Phase 1: Environment Setup (30 minutes)
**Objective**: Get everyone set up with Node.js and npm

**Instructions for Instructor**:
1. Have participants visit [nodejs.org](https://nodejs.org) and download LTS version
2. Walk through installation process for different operating systems
3. Verify installations with `node --version` and `npm --version`
4. Troubleshoot any installation issues

**Common Issues**:
- PATH not updated after installation
- Old Node.js versions interfering
- Permission issues on macOS/Linux

### Phase 2: First React App (45 minutes)
**Objective**: Create and run a basic React application

**Key Teaching Points**:
- Explain what `npx` does vs `npm`
- Walk through the generated project structure
- Explain `package.json` and its role
- Demonstrate hot reloading

**Files to Use**:
- Start with basic `src/App.js`
- Show how changes trigger automatic reloads

### Phase 3: Adding Dependencies (30 minutes)
**Objective**: Learn dependency management

**Key Teaching Points**:
- Difference between dependencies and devDependencies
- Understanding semantic versioning
- How `node_modules` works
- Importance of `package-lock.json`

**Files to Use**:
- Switch to `src/App-with-dependencies.js`
- Install axios and moment

### Phase 4: Error Debugging Exercise (45 minutes)
**Objective**: Learn to read and fix build errors

**Key Teaching Points**:
- How build tools provide immediate feedback
- Reading error messages and stack traces
- Understanding line numbers and context

**Files to Use**:
- Switch to `src/App-broken.js` (intentionally broken)
- Let participants encounter the error
- Guide them through fixing it

### Phase 5: Styling and Bootstrap (30 minutes)
**Objective**: Add external CSS framework

**Key Teaching Points**:
- How CSS dependencies work in bundlers
- Import order matters
- CSS modules vs global CSS

**Files to Use**:
- Install Bootstrap
- Switch to `src/App-with-styling.js`
- Use `src/App-styled.css`

### Phase 6: Linting Setup (30 minutes)
**Objective**: Introduction to code quality tools

**Key Teaching Points**:
- What linting is and why it's important
- Different types of rules (errors vs warnings)
- Team coding standards

**Files to Use**:
- Install ESLint and plugins
- Set up `.eslintrc.json`

### Phase 7: Fixing Linting Issues (30 minutes)
**Objective**: Practice fixing code quality issues

**Key Teaching Points**:
- Reading linting output
- Automatic vs manual fixes
- Understanding different rule types

**Files to Use**:
- Switch to `src/App-with-linting-issues.js`
- Run `npm run lint`
- Fix issues step by step
- Show `src/App-linting-fixed.js` as solution

### Phase 8: Production Build (20 minutes)
**Objective**: Understand the build process

**Key Teaching Points**:
- Development vs production builds
- Minification and optimization
- Bundle analysis

## Troubleshooting Guide

### Common Issues and Solutions

**"Command not found" errors**:
```bash
# Check if Node.js is in PATH
echo $PATH
# or on Windows
echo $env:PATH
```

**Permission errors on npm install**:
```bash
# Fix npm permissions on macOS/Linux
sudo chown -R $(whoami) ~/.npm
```

**Port already in use**:
```bash
# Use different port
npm start -- --port 3001
```

**Build failures**:
1. Clear node_modules: `rm -rf node_modules package-lock.json`
2. Reinstall: `npm install`
3. Check for syntax errors in recent changes

### Debugging Steps for Participants

1. **Read the error message carefully**
   - Look for file names and line numbers
   - Pay attention to the error type

2. **Check recent changes**
   - What was the last thing you modified?
   - Can you undo it to see if the error goes away?

3. **Use the browser console**
   - Open Developer Tools
   - Check for JavaScript errors

4. **Check the terminal output**
   - Build tools show detailed error information
   - Don't ignore warnings

## Extension Activities

For participants who finish early:

1. **Add a new API endpoint**
   - Find a free API online
   - Add it to the application

2. **Implement additional ESLint rules**
   - Add Prettier for formatting
   - Set up pre-commit hooks

3. **Explore the build output**
   - Run `npm run build`
   - Examine the generated files
   - Use bundle analyzer tools

## Assessment Ideas

### Quick Knowledge Checks
- What's the difference between `npm install` and `npm install --save-dev`?
- How do you fix a linting error vs a warning?
- What happens when you run `npm run build`?

### Practical Exercises
- Add a new dependency to the project
- Fix a deliberately introduced syntax error
- Configure a new ESLint rule

## Resources for Further Learning

### Documentation
- [Node.js Documentation](https://nodejs.org/docs/)
- [npm Documentation](https://docs.npmjs.com/)
- [React Documentation](https://reactjs.org/docs)
- [ESLint Rules Reference](https://eslint.org/docs/rules/)

### Tools
- [Bundle Analyzer](https://www.npmjs.com/package/webpack-bundle-analyzer)
- [npm-check-updates](https://www.npmjs.com/package/npm-check-updates)

## Feedback Collection

Ask participants:
1. What was the most challenging part?
2. What concepts need more explanation?
3. What would improve the workshop?
4. How confident do you feel starting your own project now?

## Post-Workshop Follow-up

### Next Steps for Participants
1. Try building a small project from scratch
2. Explore TypeScript
3. Learn about testing frameworks
4. Investigate deployment options

### Advanced Topics for Future Workshops
- Unit testing with Jest
- TypeScript introduction
- Docker and containerization
- CI/CD pipelines
- Performance optimization

---

## Instructor Checklist

### Before the Workshop
- [ ] Test all workshop files on a clean machine
- [ ] Prepare backup laptops/VMs for participants with setup issues
- [ ] Download Node.js installers for different operating systems
- [ ] Prepare slides or screen share setup
- [ ] Test internet connection for API calls

### During the Workshop
- [ ] Take breaks every 45-60 minutes
- [ ] Check that everyone is keeping up
- [ ] Encourage questions and discussion
- [ ] Demonstrate on your own machine first
- [ ] Walk around to help with individual issues

### After the Workshop
- [ ] Collect feedback
- [ ] Share additional resources
- [ ] Update workshop materials based on feedback
- [ ] Schedule follow-up sessions if needed

---

**Remember**: The goal is hands-on learning. Let participants make mistakes and debug them - that's where the real learning happens!
