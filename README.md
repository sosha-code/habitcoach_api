# HabitCoach API

A Rails 7 API-only app for **habit tracking and coaching**.  
Provides user authentication (JWT), habits management, daily check-ins, and progress summaries.  

---

## ✨ Features

- **Authentication (JWT)**
  - `POST /signup` — create account
  - `POST /login` — return token
  - `GET /me` — fetch current user

- **Habits** *(coming soon)*
  - Create, edit, delete, and list habits

- **Daily Check-ins** *(coming soon)*
  - Mark habits as complete each day

- **Progress Summary** *(coming soon)*
  - Streaks and completion rates

---

## 🛠️ Tech Stack

- Ruby on Rails 7 (API-only mode)  
- PostgreSQL  
- JWT for authentication  
- Docker & Docker Compose  
- RSpec (planned tests)  

---

## 📦 Getting Started

### Prerequisites
- Docker Desktop installed  
- GitHub CLI (`gh`) optional for PRs  

### Setup
```bash
# clone repo
git clone https://github.com/<your-username>/habitcoach_api.git
cd habitcoach_api

# start services
docker compose up -d

# setup DB
docker compose exec web bash -lc "bin/rails db:prepare"
```

--- Example API Usage
```bash
# Signup
curl -X POST http://localhost:3000/signup \
  -H "Content-Type: application/json" \
  -d '{"user":{"email":"demo@example.com","name":"Demo","password":"secret","password_confirmation":"secret"}}'

# Login
curl -X POST http://localhost:3000/login \
  -H "Content-Type: application/json" \
  -d '{"user":{"email":"demo@example.com","password":"secret"}}'

# Me (replace TOKEN)
curl http://localhost:3000/me \
  -H "Authorization: Bearer TOKEN"
  ```

