# School Report Card System

A full-stack web application with an Express/MongoDB backend and a React/Vite/Tailwind CSS frontend.

---

## Quick Start (Windows)

You can launch both the backend and frontend simultaneously using the launcher script:

- **Double-click** on [`start-dev.bat`](file:///c:/only%20freelance/Rajan-sir-result/Rajan-sir-result-main/start-dev.bat)  
  *or*
- Run in PowerShell:
  ```powershell
  .\start-dev.ps1
  ```

---

## Manual Start (Two Terminals)

Open a terminal in the `Rajan-sir-result-main` folder:

### 1. Terminal 1 - Backend Server (Port 5000)
```bash
npm run server
```
- Server URL: `http://localhost:5000`
- Health check: `http://localhost:5000/api/health`

### 2. Terminal 2 - Frontend App (Port 8080)
```bash
npm run client
```
- App URL: `http://localhost:8080`

---

## Database Configuration

The MongoDB connection string is configured in `.env`:
- `MONGODB_URI`: Cloud MongoDB Atlas connection string
- `PORT`: 5000