"""
URL configuration for filterbuy_b2b project.
"""

from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path("admin/", admin.site.urls),
    path("api/rbac/", include("rbac.urls")),
]

