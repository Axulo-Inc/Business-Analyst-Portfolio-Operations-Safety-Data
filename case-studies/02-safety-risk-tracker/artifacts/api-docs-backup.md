# API Documentation
## Safety & Risk Management System

## Base Information
- **Base URL:** `https://api.safety-system.company.com/v1`
- **Authentication:** Bearer Token required
- **Rate Limit:** 100 requests/minute per user

## 1. Authentication Endpoints

### 1.1 Login
**POST** `/auth/login`
```json
Request:
{
  "username": "user@company.com",
  "password": "password123"
}

Response (200 OK):
{
  "access_token": "eyJhbGciOiJIUzI1NiIs...",
  "token_type": "bearer",
  "expires_in": 3600,
  "user": {
    "id": "USER001",
    "name": "John Smith",
    "roles": ["SAFETY_OFFICER"]
  }
}
