#!/bin/bash
# Quick setup script for filterbuy_b2b project

set -e

echo "🚀 Setting up filterbuy_b2b..."

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "📦 Creating virtual environment..."
    python3.12 -m venv venv
fi

# Activate virtual environment
echo "🔌 Activating virtual environment..."
source venv/bin/activate

# Install dependencies
echo "📥 Installing dependencies..."
pip install -q -r requirements.txt

# Run migrations
echo "🗃️  Running migrations..."
python manage.py migrate --no-input

echo "✅ Setup complete!"
echo ""
echo "To start the server, run:"
echo "  source venv/bin/activate"
echo "  python manage.py runserver"
echo ""
echo "To create a superuser:"
echo "  python manage.py createsuperuser"

