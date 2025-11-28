# FilterBuy B2B - Django Project

A minimal Django 5 project with RBAC (Role-Based Access Control) app scaffold.

## Tech Stack

- Python 3.12+
- Django 5.2+
- SQLite (development)
- Docker & Docker Compose

---

## Quick Start (Docker - Recommended)

### 1. Start the server

```bash
docker compose up --build
```

### 2. Create a superuser

```bash
docker compose exec web python manage.py createsuperuser
```

### 3. Access the application

- **Admin Panel**: http://localhost:8000/admin/
- **RBAC API**: http://localhost:8000/api/rbac/

### 4. Stop the server

```bash
docker compose down
```

---

## Quick Start (Local with Virtual Environment)

### 1. Create and activate virtual environment

```bash
python3.12 -m venv venv
source venv/bin/activate
```

### 2. Install dependencies

```bash
pip install -r requirements.txt
```

### 3. Run migrations

```bash
python manage.py migrate
```

### 4. Create a superuser

```bash
python manage.py createsuperuser
```

### 5. Start the development server

```bash
python manage.py runserver
```

### 6. Access the application

- **Admin Panel**: http://localhost:8000/admin/
- **RBAC API**: http://localhost:8000/api/rbac/

---

## Using the Setup Script (Alternative)

```bash
chmod +x setup.sh
./setup.sh
source venv/bin/activate
python manage.py runserver
```

---

## Project Structure

```
B2B/
├── filterbuy_b2b/          # Django project settings
│   ├── __init__.py
│   ├── asgi.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── rbac/                   # RBAC application
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── models.py
│   ├── urls.py
│   └── views.py
├── docker-compose.yml
├── Dockerfile
├── manage.py
├── requirements.txt
├── setup.sh
└── README.md
```

---

## Common Commands

### Docker

```bash
# Start in background
docker compose up -d

# View logs
docker compose logs -f

# Stop containers
docker compose down

# Run Django management commands
docker compose exec web python manage.py <command>

# Open Django shell
docker compose exec web python manage.py shell

# Create new migrations
docker compose exec web python manage.py makemigrations

# Apply migrations
docker compose exec web python manage.py migrate
```

### Local Development

```bash
# Activate virtual environment
source venv/bin/activate

# Run server
python manage.py runserver

# Create migrations
python manage.py makemigrations

# Apply migrations
python manage.py migrate

# Open Django shell
python manage.py shell

# Run tests
python manage.py test
```

---

## URL Routes

| URL | Description |
|-----|-------------|
| `/admin/` | Django Admin Panel |
| `/api/rbac/` | RBAC API endpoints (empty) |

---

## Environment

Default settings for local development:

- `DEBUG = True`
- `ALLOWED_HOSTS = ["*"]`
- Database: SQLite (`db.sqlite3`)

---

## Next Steps

1. Define RBAC models in `rbac/models.py`
2. Create serializers in `rbac/serializers.py`
3. Add views/viewsets in `rbac/views.py`
4. Register URL patterns in `rbac/urls.py`
5. Register models in `rbac/admin.py`

