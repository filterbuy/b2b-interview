"""
ASGI config for filterbuy_b2b project.
"""

import os

from django.core.asgi import get_asgi_application

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "filterbuy_b2b.settings")

application = get_asgi_application()

