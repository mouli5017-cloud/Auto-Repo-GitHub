# GitHub Repo Pusher

A modern web application that simplifies pushing your local project folders to GitHub. With just three simple steps, you can authenticate with GitHub, select a folder from your computer, and create a new repository with all your files.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Running the Application](#running-the-application)
- [How to Use](#how-to-use)
- [Troubleshooting](#troubleshooting)
- [Technology Stack](#technology-stack)

---

## Features

✨ **Three-Step Workflow**
- Connect GitHub with Personal Access Token
- Select a folder from your computer
- Configure repository settings and push

🔐 **Secure Authentication**
- Uses GitHub Personal Access Tokens
- Token validation before repository creation
- Clear permission requirement guidance

📁 **Easy Folder Selection**
- Drag-and-drop folder support
- File count display
- Folder preview before pushing

🎨 **Modern UI**
- Professional developer-focused design
- Real-time error messages
- Step-by-step progress indicators

---

## Prerequisites

Before running the GitHub Repo Pusher application, ensure you have:

1. **Node.js** (version 16 or higher)
   - Download from [nodejs.org](https://nodejs.org/)
   - Verify installation: `node --version`

2. **pnpm** (package manager)
   - Install globally: `npm install -g pnpm`
   - Verify installation: `pnpm --version`

3. **GitHub Account**
   - Create a free account at [github.com](https://github.com)
   - Have your GitHub username ready

4. **GitHub Personal Access Token**
   - Go to [github.com/settings/tokens/new](https://github.com/settings/tokens/new)
   - Create a new token with **"repo"** scope
   - Copy and save the token (you'll need it when running the app)

---

## Installation

### Step 1: Clone or Download the Project

If you have the project files, navigate to the project directory:

```bash
cd github-repo-pusher
```

### Step 2: Install Dependencies

Install all required dependencies using pnpm:

```bash
pnpm install
```

This command will:
- Download all npm packages listed in `package.json`
- Install React, Tailwind CSS, shadcn/ui, and other dependencies
- Set up the development environment

---

## Running the Application

### Development Mode

To run the application in development mode with hot-reload:

```bash
pnpm dev
```

**What happens:**
- The Vite development server starts
- The application opens at `http://localhost:3000`
- Changes to code automatically refresh the browser
- Console shows real-time errors and warnings

### Production Build

To create an optimized production build:

```bash
pnpm build
```

This generates:
- Minified and optimized JavaScript files
- Optimized CSS bundles
- Production-ready assets in the `dist/` directory

### Preview Production Build

To test the production build locally:

```bash
pnpm preview
```

---

## How to Use

### Step 1: Connect Your GitHub Account

1. **Open the Application**
   - Navigate to `http://localhost:3000` in your browser

2. **Enter Your GitHub Personal Access Token**
   - Click the link "github.com/settings/tokens/new" to create a new token
   - Select the **"repo"** scope (required for repository creation)
   - Copy the generated token (starts with `ghp_`)
   - Paste the token into the application's token field

3. **Click Continue**
   - The app validates your token
   - If valid, you'll proceed to the next step
   - If invalid, you'll see an error message with guidance

**Token Permissions Required:**
- `repo` - Full control of private repositories
- `public_repo` - Access to public repositories
- `repo:status` - Access to commit status
- `repo_deployment` - Access to deployment status

### Step 2: Select Your Project Folder

1. **Choose a Folder**
   - Click "Browse and Select Folder" or drag-and-drop a folder
   - A native file browser opens
   - Select the folder containing your project files

2. **Review Selected Folder**
   - The app displays the folder name
   - Shows the total number of files in the folder
   - All files in the folder will be included in the repository

3. **Click Continue**
   - Proceed to the configuration step

### Step 3: Configure and Push

1. **Enter Repository Details**
   - **Repository Name**: Name for your new GitHub repository
   - **Description**: Optional description of your project
   - **Visibility**: Choose between Public or Private repository

2. **Review Settings**
   - Verify the repository name and settings
   - Check that you're pushing to the correct GitHub account

3. **Click Push to GitHub**
   - The app creates a new repository on GitHub
   - Uploads all files from your selected folder
   - Creates an initial commit with all files
   - Shows success message with repository link

4. **View Your Repository**
   - Click the provided GitHub link to view your new repository
   - All files are now on GitHub in the main branch

---

## Troubleshooting

### Issue: "Invalid GitHub Token"

**Solution:**
1. Go to [github.com/settings/tokens](https://github.com/settings/tokens)
2. Check if your token is still valid (not expired)
3. If expired, create a new token at [github.com/settings/tokens/new](https://github.com/settings/tokens/new)
4. Make sure the **"repo"** scope is selected
5. Copy the new token and paste it into the application

### Issue: "Token Does Not Have Required Permissions"

**Solution:**
1. The token was created without the "repo" scope
2. Create a new token at [github.com/settings/tokens/new](https://github.com/settings/tokens/new)
3. **Important**: Check the **"repo"** checkbox under scopes
4. This scope gives full control of private repositories
5. Copy and use the new token in the application

### Issue: "Failed to Create Repository"

**Possible causes:**
- Repository name already exists on your GitHub account
- Special characters in repository name (use only letters, numbers, hyphens, underscores)
- GitHub API rate limit exceeded (wait a few minutes and try again)

**Solution:**
1. Use a different repository name
2. Ensure the name contains only alphanumeric characters, hyphens, and underscores
3. Wait a few minutes before trying again
4. Check your GitHub account to see if the repository was created

### Issue: "Folder Selection Not Working"

**Solution:**
1. Ensure you're using a modern browser (Chrome, Firefox, Safari, Edge)
2. Try dragging and dropping the folder instead of clicking browse
3. Clear browser cache and reload the page
4. Try a different folder to test if the issue is folder-specific

### Issue: "Application Won't Start"

**Solution:**
1. Ensure Node.js is installed: `node --version`
2. Ensure pnpm is installed: `pnpm --version`
3. Delete `node_modules` folder and reinstall: `pnpm install`
4. Clear pnpm cache: `pnpm store prune`
5. Try running again: `pnpm dev`

---

## Technology Stack

The GitHub Repo Pusher is built with modern web technologies:

| Technology | Purpose |
|---|---|
| **React 19** | UI framework for building interactive components |
| **TypeScript** | Type-safe JavaScript for better code quality |
| **Tailwind CSS 4** | Utility-first CSS framework for styling |
| **shadcn/ui** | Pre-built accessible UI components |
| **Vite** | Fast build tool and development server |
| **Wouter** | Lightweight client-side routing |
| **Lucide React** | Beautiful icon library |
| **Sonner** | Toast notification system |

---

## Project Structure

```
github-repo-pusher/
├── client/
│   ├── public/              # Static files
│   ├── src/
│   │   ├── components/      # Reusable UI components
│   │   ├── pages/           # Page components
│   │   ├── contexts/        # React contexts
│   │   ├── lib/             # Utility functions
│   │   ├── App.tsx          # Main app component
│   │   ├── main.tsx         # React entry point
│   │   └── index.css        # Global styles
│   └── index.html           # HTML template
├── package.json             # Project dependencies
├── tsconfig.json            # TypeScript configuration
├── vite.config.ts           # Vite configuration
└── README.md                # This file
```

---

## Environment Variables

The application uses the following environment variables (automatically set):

- `VITE_FRONTEND_FORGE_API_URL` - API endpoint for frontend operations
- `VITE_FRONTEND_FORGE_API_KEY` - API key for authentication

These are automatically configured and do not need manual setup.

---

## Browser Compatibility

The GitHub Repo Pusher works on all modern browsers:

- ✅ Chrome/Chromium (latest)
- ✅ Firefox (latest)
- ✅ Safari (latest)
- ✅ Edge (latest)

**Note:** Folder selection requires browser support for the `webkitdirectory` attribute, which is available in all modern browsers.

---

## Support & Troubleshooting

If you encounter issues:

1. **Check the Console**
   - Open browser DevTools (F12 or Right-click → Inspect)
   - Check the Console tab for error messages
   - Share error messages when seeking help

2. **Verify Prerequisites**
   - Ensure Node.js and pnpm are installed
   - Verify GitHub token has "repo" scope
   - Check internet connection

3. **Common Solutions**
   - Clear browser cache and reload
   - Restart the development server (`pnpm dev`)
   - Reinstall dependencies (`pnpm install`)

---

## License

This project is open source and available under the MIT License.

---

## Contributing

Contributions are welcome! Feel free to:
- Report bugs and issues
- Suggest new features
- Submit pull requests with improvements

---

## Made with ❤️ for Developers

GitHub Repo Pusher simplifies the process of pushing your projects to GitHub. Happy coding!

For more information about GitHub, visit [github.com/docs](https://docs.github.com/)
